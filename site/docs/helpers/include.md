+++
description = "Include example files"
+++

{{> crumbtrail}}

# {{title}}

The `include` helper can be used to include files into your pages; normally it is used for examples.

We recommend using the *includes* folder [convention]({{ link "/docs/getting-started/conventions/" }}) so that included files are automatically ignored by the compiler.

Include paths are resolved relative to the page calling the `include` helper:

```handlebars
\{{include "../../includes/example.txt"}}
```

{{import "footer"}}
