+++
description = "Choose a random array entry"
+++

{{import "header"}}

Select a `random` element from an array and assign it to the scope for the template block.

## Arguments

* `Array` The array list to select from.

## Example

```handlebars
{{{{raw~}}}}
{{#random menus.docs~}}
{{this}}
{{~/random}}
{{{{~/raw}}}}
```

Renders to:

```text
{{#random menus.docs~}}
{{this}}
{{~/random}}
```

{{import "footer"}}
