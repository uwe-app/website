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

This helper is particularly useful in conjunction with menus which expose the URL paths for the pages they reference. Imagine you have defined a menu called `docs` which is available to your page in `menus.docs` then you can iterate the paths and get page data for each entry like this:

```handlebars
{{{{raw~}}}}
{{~#each menus.docs~}}
{{#page this}}
<h3>{{title}}</h3>
{{~/page}}
{{~/each}}
{{{{~/raw}}}}
```

Which renders to this markup:

```html
{{~#each menus.docs~}}
{{#page this}}
<h3>{{title}}</h3>
{{~/page}}
{{~/each}}
```

{{import "footer"}}
