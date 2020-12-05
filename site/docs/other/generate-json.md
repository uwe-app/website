+++
description = "Generate JSON files"
+++

{{import "header"}}

For more dynamic websites or progressive enhancement it is useful to create some JSON files that can be loaded at runtime using Javascript.

First enable the `json` file extension to be treated as templates:

```toml
[build]
extend = ["json"]
```

Then JSON files in the site source directory are treated as templates that will be written to the build directory. They can use the [[docs/helpers/json|json helper]] to write out some page data if necessary:

```handlebars
\{{json result}}
```

{{import "footer"}}
