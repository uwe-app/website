+++
description = "Select the previous item in a list"
+++

{{import "header"}}

Use the `previous` helper to select the previous item in a list; you must pass an array as the first argument and the current item as the second item. It is an error if the current item does not exist in the list.

{{#> note label="warn" type="warn"}}
You should only use this helper with lists that do not contain duplicate values.
{{/note}}

If there is no previous item available the block is not rendered.

```handlebars
{{{{raw~}}}}
{{#previous list item}}
{{! This block is set to the scope of the previous item in the list }}
{{/previous}}
{{{{~/raw}}}}
```

## Arguments

* `Array` The target array list.
* `Any` The current item.

## Example

See the [previous page partial](https://github.com/uwe-app/plugins/blob/master/std/menu/partials/prev-page.hbs) which uses this helper to create a link to the previous item in a menu.

{{import "footer"}}
