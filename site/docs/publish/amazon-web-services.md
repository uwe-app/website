+++
description = "Publish a site to Amazon Web Services"
+++

{{import "header"}}

## Credentials

Before you can publish using [Amazon Web Services][] you must configure credentials. We use the standard profile credentials to publish so if you have used the `aws` command line tools this should be familiar.

Edit the `~/.aws/credentials` file to set the access key and secret access key:

```toml
[example-credentials]
aws_access_key_id = XXXX
aws_secret_access_key = XXXX
```

We recommend that the credentials you assign have access to S3 and Cloudfront.

## Settings

Now you can configure the publish settings in `site.toml` to reference those credentials:

```toml
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
uwe publish stage
```

It is not required to have a `stage` environment but is recommended so you can check the published site before going live. Once you have verified the staging site; to publish to production just specify the `production` environment:

```
uwe publish production
```

## Keep Remote

Publishing to an AWS S3 bucket is a *sync operation* so files that do not exist locally will be deleted from the remote bucket when the `publish` command runs. Normally this is what you want if the bucket is **only** being used for static website hosting however if you are storing other files in the bucket publishing would delete those files as they are not part of the website. In this situation you should use the `keep-remote` option for the environment settings, for example:

```toml
[publish.aws.environments.production]
bucket = "example.com"
keep-remote = true
```

When `keep-remote` is enabled files are not deleted from the bucket when publishing which means that you will need to remove stale website files manually.

An example of this is the [releases web page](https://releases.uwe.app) which is a bucket containing binary executables for the software releases and an index page showing the available releases. The [releases website](https://github.com/uwe-app/releases-website/) does not delete the remote files otherwise the executables which are published separately would be removed!

## Prefix

If no bucket is given then the top-level `host` is used and you can set a `prefix` to publish into different locations in the bucket.

{{#> note label="warn" type="warn"}}
Be aware that this configuration has issues with trailing slash redirects when proxied via Cloudfront so we recommend a separate bucket per environment.
{{/note}}

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

{{> back}}

[Amazon Web Services]: https://aws.amazon.com/
