+++
description = "Generate navigation menus"
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

To render a named menu:

```handlebars
{{{{raw~}}}}
{{menu "docs"}}
{{{{~/raw}}}}
```

To render the direct descendants of the current folder excluding the index page:

```handlebars
{{{{raw~}}}}
{{menu list=true}}
{{{{~/raw}}}}
```

To iterate the pages in a menu and exclude the current page:

```handlebars
{{{{raw~}}}}
{{#menu "docs"}}
{{#unless @self}}{{title}}{{/unless}}
{{/menu}}
{{{{~/raw}}}}
```

{{import "footer"}}
