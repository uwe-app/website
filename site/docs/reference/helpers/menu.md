+++
description = "Render navigation menus"
+++

{{import "header"}}

Use the `menu` helper to render [[docs/navigation/defining-menus|menus]].

## Arguments

* `String` The menu identifier.

## Parameters

* `list` Flag to list directory content (default: `false`).

## Variables

* `@self`: Set to `true` when a path matches the current page.

## Example

Render a named menu:

```handlebars
{{{{raw~}}}}
{{menu "docs"}}
{{{{~/raw}}}}
```

Render pages in the current folder excluding the index page:

```handlebars
{{{{raw~}}}}
{{menu list=true}}
{{{{~/raw}}}}
```

Render pages and include the index page:

```handlebars
{{{{raw~}}}}
{{menu list=true include-index=true}}
{{{{~/raw}}}}
```

Render all descendants of the current folder upto the the maximum depth (64):

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

To iterate the pages in the current folder as if `list=true` omit the menu name:

```handlebars
{{{{raw~}}}}
{{#menu}}
{{#unless @self}}{{title}}{{/unless}}
{{/menu}}
{{{{~/raw}}}}
```

{{import "footer"}}
