+++
description = "Generate navigation menus"
+++

{{> crumbtrail}}

# {{title}}

Use the `menu` helper to iterate the destinations for the current location:

```handlebars
{{{{raw}}}}{{#menu}}
* [{{title}}]({{href}})
{{/menu}}{{{{/raw}}}}
```

The context for the iterator is set to the page for each item in the current directory; use the `@self` flag to ignore the current page:

```handlebars
{{{{raw}}}}{{#menu}}
{{#unless @self}}
* [{{title}}]({{href}})
{{/unless}}
{{/menu}}{{{{/raw}}}}
```

{{import "footer"}}
