+++
description = "Render a table of contents list"
+++

{{> crumbtrail}}

# {{title}}

Render a table of contents list:

```handlebars
\{{toc}}
```

* `tag`: Tag for the list; either `ol` or `ul` (default: `ol`).
* `class`: Class name for the list element.
* `from`: Start heading depth (eg: `"h3"`).
* `to`: End heading depth (eg: `"h5"`).

This helper is only available when the `toc` transform is enabled, see [table of contents]({{link "/docs/design-patterns/table-of-contents/"}}) for more detail.

{{import "footer"}}
