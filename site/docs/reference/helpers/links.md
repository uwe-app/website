+++
description = "Render link tags"
+++

{{import "header"}}

The `links` helper renders `<link>` elements in the document head.

There is no need to call this helper directly unless you are designing your own layout; the [std::core][] main layout calls this helper in the [head partial][].

## Example

```handlebars
\{{links~}}
```

{{import "footer"}}

[std::core]: https://github.com/uwe-app/plugins/tree/main/std/core
[head partial]: https://github.com/uwe-app/plugins/blob/main/std/core/partials/head.hbs
