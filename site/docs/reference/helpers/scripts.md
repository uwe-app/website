+++
description = "Render script tags"
+++

{{import "header"}}

The scripts helper is called automatically to include scripts in a page by the [main layout][]. If you are designing your own layout you should call this helper just before the end of the document body.

```handlebars
\{{scripts}}
```

{{#> note type="warn" label="warn"}}
If you do not call this helper in a custom layout then live reload will not work.
{{/note}}

{{import "footer"}}

[main layout]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs
