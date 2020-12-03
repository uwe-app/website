+++
description = "Render the content for the current page"
+++

{{> crumbtrail}}

# {{title}}

The `document` helper renders the content for the current page.

There is no need to call this helper directly unless you are designing your own layout; the [std::core][] main layout calls this helper in the [content partial][].

{{import "footer"}}

[std::core]: https://github.com/uwe-app/plugins/tree/master/std/core
[content partial]: https://github.com/uwe-app/plugins/blob/master/std/core/partials/content.hbs
