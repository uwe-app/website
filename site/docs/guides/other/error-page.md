+++
description = "Custom error page"
+++

{{import "header"}}

When you create a new project from a blueprint a [404.md][] file will be included which will compile to a `404.html` page at the root of the site.

The important thing to remember when designing error pages is that they are not served in a fixed location. The website hosting provider can serve these files from any URL which means that paths *must be absolute*. Therefore an error page will typically include page meta data such as this example:

```toml
absolute = true
listing = false
rewrite-index = false
```

Note that `rewrite-index` is disabled otherwise the file would be written to `404/index.html`!

{{import "footer"}}

[404.md]: https://github.com/uwe-app/runtime/blob/main/blueprint/default/site/404.md
