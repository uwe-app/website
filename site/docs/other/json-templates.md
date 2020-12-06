+++
title = "JSON Templates"
description = "Create runtime JSON documents"
+++

{{import "header"}}

For progressive enhancement it can be useful to create JSON files that are loaded at runtime using Javascript.

Enable files with the `json` extension to be rendered as templates:

```toml
[build]
extend = ["json"]
```

Then JSON files in the site source directory will be rendered to the build directory using the template rendering engine. They can use the [[docs/helpers/json|json helper]] to write out page data:

```handlebars
\{{json result}}
```

{{import "footer"}}
