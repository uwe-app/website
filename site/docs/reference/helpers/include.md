+++
description = "Include example files"
+++

{{import "header"}}

The `include` helper can be used to include files into your pages; normally it is used for examples. Include paths are resolved relative to the page calling the `include` helper.

## Arguments

* `String|Path` The file system path to include.

## Example

```handlebars
\{{include ../../includes/example.txt}}
```

{{#> note label="info"}}
Use the *includes* folder [[docs/getting-started/conventions]] to automatically ignore included files.
{{/note}}


{{import "footer"}}
