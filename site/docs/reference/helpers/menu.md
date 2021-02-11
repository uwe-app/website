+++
description = "Render navigation menus"
+++

{{import "header"}}

Use the `menu` helper to render [[docs/guides/navigation/defining-menus|menus]].

## Arguments

* `String` The menu identifier.

## Parameters

* `list` Flag to list directory content (default: `false`).
* `include-index` Include the index file when listing directory content (default: `false`).
* `depth` Maximum depth when listing directory content (default: `1`).
* `path` Optional directory to list.

{{#>alert label="info"}}
Use `depth=0` to get all the descendants of a folder; the listing will use the default maximum folder depth for traversal which is 64.
{{/alert}}

## Local Variables

* `@self`: Set to `true` when a path matches the current page.

## Example

Render a named menu:

```handlebars
{{{{raw~}}}}
{{menu "docs"}}
{{{{~/raw}}}}
```

Render a menu of pages in the current folder excluding the index page:

```handlebars
{{{{raw~}}}}
{{menu list=true}}
{{{{~/raw}}}}
```

Render a menu of pages in the current folder and include the index page:

```handlebars
{{{{raw~}}}}
{{menu list=true include-index=true}}
{{{{~/raw}}}}
```

Render a menu including all the descendants of the current folder upto the the maximum depth:

```handlebars
{{{{raw~}}}}
{{menu list=true depth=0}}
{{{{~/raw}}}}
```

Iterate the pages in a menu and exclude the current page:

```handlebars
{{{{raw~}}}}
{{#menu "docs"}}
{{#unless @self}}{{title}}{{/unless}}
{{/menu}}
{{{{~/raw}}}}
```

Iterate the pages in the current folder (`list=true` is inferred):

```handlebars
{{{{raw~}}}}
{{#menu}}
{{#unless @self}}{{title}}{{/unless}}
{{/menu}}
{{{{~/raw}}}}
```

Iterate all the pages in a specific folder upto the maximum folder depth:

```handlebars
{{{{raw~}}}}
{{#menu path="/docs/" list=true include-index=true depth=0}}
{{title}}
{{/menu}}
{{{{~/raw}}}}
```

{{import "footer"}}
