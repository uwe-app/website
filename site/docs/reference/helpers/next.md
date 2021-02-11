+++
description = "Select the next item in a list"
+++

{{import "header"}}

Use the `next` helper to select the next item in a list; you must pass an array as the first argument and the current item as the second argument. It is an error if the current item does not exist in the list.

## Arguments

* `Array` The target array list.
* `Any` The current item.

## Example

If there is no next item available the block is not rendered.

```handlebars
{{{{raw~}}}}
{{#next list item}}
{{! This block is set to the scope of the next item in the list }}
{{/next}}
{{{{~/raw}}}}
```

See the [next page partial](https://github.com/uwe-app/plugins/blob/main/std/menu/partials/next-page.hbs) which uses this helper to create a link to the next item in a menu.

{{#>alert label="warn" type="warn"}}
You should only use this helper with lists that do not contain duplicate values.
{{/alert}}


{{import "footer"}}
