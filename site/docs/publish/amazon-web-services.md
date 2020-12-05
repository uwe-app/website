+++
description = "Publish a site to Amazon Web Services"
+++

{{import "header"}}

## Credentials

Before you can publish using [Amazon Web Services][] you must configure credentials. We use the standard profile credentials to publish so if you have used the `aws` command line tools this should be familiar.

Edit the `~/.aws/credentials` file to set the access key and secret access key:

```
[example-credentials]
aws_access_key_id = XXXX
aws_secret_access_key = XXXX
```

We recommend that the credentials you assign have access to S3 and Cloudfront.

## Settings

Now you can configure the publish settings in `site.toml` to reference those credentials:

```
[publish.aws]
region = "us-east-1"
credentials = "example-credentials"

[publish.aws.environments.stage]
bucket = "stage.example.com"

[publish.aws.environments.production]
bucket = "example.com"
```

You need to ensure that the region matches where your buckets are located and the buckets must already exist then you can publish an environment like this:

```
ht publish stage
```

It is not required to have a `stage` environment but is recommended so you can check the published site before going live. Once you have verified the staging site; to publish to production just specify the `production` environment:

```
ht publish production
```

## Prefix

If no bucket is given then the top-level `host` is used and you can set a `prefix` to publish into different locations in the bucket:

```toml
host = "example.com"

[publish.aws]
region = "us-east-1"
credentials = "example-credentials"

[publish.aws.environments.stage]
prefix = "stage"

[publish.aws.environments.production]
prefix = "production"
```

However, be aware that this configuration has issues with trailing slash redirects when proxied via Cloudfront so we recommend a separate bucket per environment.

{{> back}}

[Amazon Web Services]: https://aws.amazon.com/
