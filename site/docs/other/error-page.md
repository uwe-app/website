+++
description = "Custom error page"
+++

{{import "header"}}

When you create a new project from a blueprint a [404.md][] file will be included which will compile to a `404.html` page at the root of the site.

The important thing to remember when designing error pages is that they are not served in a fixed location. The website hosting provider can serve these files from any URL which means that paths *must be absolute*.

We make this process seamless by using the [std::core::error](https://github.com/uwe-app/plugins/blob/master/std/core/layouts/error.hbs) layout but if you want to customize the error page be aware of this restriction.

By convention the file should be `404.html` at the root of the site so you must also ensure that clean URLs are disabled for any custom error page; if we look at the frontmatter for the default [404.md][] file:

```toml
layout = "std::core::error"
rewrite-index = false
```

Note that we disable `rewrite-index` otherwise the file would be written to `404/index.html`!

{{import "footer"}}

[404.md]: https://github.com/uwe-app/runtime/blob/master/blueprint/default/site/404.md
