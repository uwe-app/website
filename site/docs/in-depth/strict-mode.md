+++
description = "Strict mode and how to disable it"
+++

{{import "header"}}

Templates are parsed with strict mode enabled so it is an error if a variable does not exist; it is possible to disable strict mode in the [[docs/reference/settings]] however it is not recommended. For example:

```toml
[build]
strict = false
```

{{import "footer"}}
