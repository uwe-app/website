+++
description = "Get page data for the parent folder"
+++

{{import "header"}}

The `parent` helper sets the scope of the inner block to the page data for the parent; if a parent does not exist the block is not rendered.

## Example

This is typically used to render a link up to a parent folder:

```handlebars
{{{{raw~}}}}
{{#parent~}}
<a href=".." title="{{title}}">Back to {{title}}</a>
{{~/parent}}
{{{{~/raw}}}}
```

Renders as:

```html
{{#parent~}}
<a href=".." title="{{title}}">Back to {{title}}</a>
{{~/parent}}
```

{{import "footer"}}
