+++
description = "Render the current page content"
+++

{{import "header"}}

The `document` helper renders the content for the current page.

There is no need to call this helper directly unless you are designing your own layout; the [std::core][] main layout calls this helper in the [content partial][].

## Example

```handlebars
\{{document~}}
```

{{import "footer"}}

[std::core]: https://github.com/uwe-app/plugins/tree/main/std/core
[content partial]: https://github.com/uwe-app/plugins/blob/main/std/core/partials/content.hbs
