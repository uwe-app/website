+++
description = "Include example files"
+++

{{import "header"}}

The `include` helper can be used to include files into your pages; normally it is used for examples.

Include paths are resolved relative to the page calling the `include` helper.

## Arguments

* `String|Path` The file system path to include.

{{#> note label="info"}}
We recommend using the *includes* folder [[docs/getting-started/conventions]] so that included files are automatically ignored by the compiler.
{{/note}}

## Example

```handlebars
\{{include ../../includes/example.txt}}
```

{{import "footer"}}
