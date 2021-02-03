+++
description = "Render navigation menus"
+++

{{import "header"}}

The [[docs/reference/helpers/menu|menu helper]] can be used to render a menu; in it's simplest form you can just pass the menu identifier:

```handlebars
\{{menu "primary"~}}
```

Renders to this HTML markup:

```html
{{menu "primary"~}}
```

The [[docs/reference/helpers/menu|menu helper]] can also be called using block notation and will set the scope of the inner template to the page for the menu item. In this example we use the page description for the link label:

```handlebars
{{{{raw~}}}}
<ul>
{{~#menu "primary"}}
<li><a href="{{link href}}" title="{{title}}">{{description}}</a></li>
{{/menu~}}
</ul>
{{{{~/raw}}}}
```

Renders to this HTML markup:

```html
<ul>
{{~#menu "primary"}}
<li><a href="{{link href}}" title="{{title}}">{{description}}</a></li>
{{/menu~}}
</ul>
```

{{import "footer"}}
