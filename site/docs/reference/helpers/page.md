+++
description = "Get page data"
+++

{{import "header"}}

The `page` helper gets the data for a specific page by path and assigns it as the context for the inner block template. It is an error if the page does not exist.

## Arguments

* `String` The absolute path to a page.

## Example

```handlebars
{{{{raw~}}}}
{{#page "docs/"~}}
<h3>{{title}}</h3>
<p>{{description}}</p>
{{~/page}}
{{{{~/raw}}}}
```

Renders to:

```html
{{#page "docs/"~}}
<h3>{{title}}</h3>
<p>{{description}}</p>
{{~/page}}
```

{{import "footer"}}
