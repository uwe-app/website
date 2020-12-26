+++
description = "Group related projects"
+++

{{import "header"}}

Workspaces let us group multiple related projects together so we can build them at the same time. This is particularly useful when deploying to separate sub-domains. Perhaps you want your main website at `example.com`, your blog at `blog.example.com` and your documentation at `docs.example.com`.

To create a workspace put the projects in the same folder and add a `site.toml` file to represent the workspace; the folders looks like this:

```text
example.com
├── blog
├── docs
├── site.toml
└── website
```

In the workspace `site.toml` file define the workspace members:

```toml
[workspace]
members = [
  "website",
  "blog",
  "docs"
]
```

Remember each workspace member must have it's own project-level settings in `site.toml` too, for example:

```toml
lang = "en"
host = "example.com"
```

Now when you compile in the workspace folder (`example.com`) it will build all of the projects.

When you use live reload (`uwe --live`) in a workspace all of the projects are available but only the first project in the list will be launched.

The projects are available via the following URLs (assuming SSL is enabled):

* `https://example-com.loopback.space:8843/`
* `https://blog-example-com.loopback.space:8843/`
* `https://docs-example-com.loopback.space:8843/`

{{#>note label="info"}}
We use the `loopback.space` domain to resolve to the `127.0.0.1` loopback address and each host name is converted to a slug and used as the sub-domain for the virtual host.
{{/note}}

{{import "footer"}}
