+++
description = "Group related projects"
+++

{{import "header"}}

Workspaces let us group multiple related projects together so we can build them at the same time; they are useful when deploying projects to separate sub-domains. Perhaps you want your main website at `example.com`, your blog at `blog.example.com` and your documentation at `docs.example.com`.

{{#> note label="info"}}
Remember to replace `example.com` with your website domain name if you plan to use the workspace.
{{/note}}

To follow along with this guide run these commands to create a workspace with multiple projects:

```
mkdir example.com
uwe new example.com/website
uwe new example.com/blog
uwe new example.com/docs
touch example.com/site.toml
```

Then in the `example.com/site.toml` file define the workspace members:

```toml
[workspace]
members = [
  "website",
  "blog",
  "docs"
]
```

Now each project should be given a different host name so we can create virtual hosts.

In `example.com/website/site.toml` change the `host` to the domain name you want to use, for example:

```toml
host = "example.com"
```

Then update `example.com/blog/site.toml` to use a sub-domain:

```toml
host = "blog.example.com"
```

And update `example.com/docs/site.toml` too:

```toml
host = "docs.example.com"
```

Now when you compile in the workspace folder it will build all of the projects, for example:

```
cd example.com
uwe
```

When you use live reload (`uwe --live`) in a workspace all of the projects are available but only the first project in the list will be launched.

Assuming [[docs/other/ssl-certificates|SSL certificates]] are enabled the projects are available via the following URLs 

* `https://example-com.loopback.space:8843/`
* `https://blog-example-com.loopback.space:8843/`
* `https://docs-example-com.loopback.space:8843/`

{{#>note label="info"}}
We use the `loopback.space` domain to resolve to the `127.0.0.1` loopback address and each host name is converted to a slug and used as the sub-domain for the virtual host.
{{/note}}

{{import "footer"}}
