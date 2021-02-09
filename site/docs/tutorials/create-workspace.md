+++
description = "Group related projects in a workspace"
+++

{{import "header"}}

Workspaces let us group multiple related projects together so we can build them at the same time; they are useful when deploying projects to separate sub-domains. Perhaps you want your main website at `example.com`, your blog at `blog.example.com` and your documentation at `docs.example.com`.

{{#>note}}
Remember to replace `example.com` with your website domain name if you plan to use the workspace.
{{/note}}

Currently, workspaces can only contain projects they may not contain other workspaces; if this restriction affects you please let us know in the [community discussions](https://github.com/uwe-app/community/discussions).

{{#> note label="Learn how to"}}
{{toc from="h2" tag="ul"}}
{{/note}}

## Create multiple projects

To begin we use the `new` command to scaffold several projects for the workspace:

```
mkdir example.com
cd example.com
uwe new website
uwe new blog blog
uwe new docs
```

## Define workspace members

Then edit the `example.com/site.toml` file to define the members of our new workspace:

```toml
[workspace]
members = [
  "website",
  "blog",
  "docs"
]
```

## Set unique host names

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

## Build all the workspace members

Now when you compile in the workspace folder it will build all of the projects, for example:

```
cd example.com
uwe build
```

When you use live reload (`uwe dev`) in a workspace all of the projects are available but only the first project in the list will be launched.

Assuming [[docs/in-depth/security/ssl-certificates|SSL certificates]] are enabled the projects can be accessed using the following URLs

* `https://example-com.loopback.space:8843/`
* `https://blog-example-com.loopback.space:8843/`
* `https://docs-example-com.loopback.space:8843/`

{{#>note}}
We use the `loopback.space` domain to resolve to the `127.0.0.1` loopback address and each host name is converted to a slug and used as the sub-domain for the virtual host.
{{/note}}

## Link Projects

To link to workspace projects in your templates you can use the `members` map which references an absolute URL for each project in the workspace. During development the value is a URL like the ones listed above but for release builds it will be a schemeless URL to the host such as `//blog.example.com/`.

For example to link to the `blog` workspace project:

```handlebars
<a href="\{{members.blog}}" title="Blog">Blog</a>
```

Linking workspace projects like this enables links to work during development and also when published online.

There is a caveat to this technique that is important to be aware of: the `members` variable is only available when building a workspace which means that if you try to run a workspace member directly that contains a `members` reference you would get a compiler error as the variable is not available.

Assuming that `website` links to the `blog` project like in the example above if we tried to build the `website` project directly we would get an error:

```
uwe example.com/website
```

Would generate an error like this:

{{#>note type="error"}}
ERROR compiler::compile  > Variable 'projects.blog' not found in website/site/index.md, check the variable path and verify the template data
{{/note}}

The solution is to use a workspace `member` filter when we only want to launch a single project:

```
uwe example.com -m website --live
```

Now the link to the `blog` project will be available and a compiler error is not generated.

{{#>note}}
In this scenario if you follow the link it would generate a 404 error as we did not launch a virtual host for the blog workspace member!
{{/note}}

{{import "footer"}}
