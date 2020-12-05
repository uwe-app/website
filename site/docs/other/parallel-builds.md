+++
description = "Disable parallel builds for debugging"
+++

{{import "header"}}

The compiler has parallel builds enabled by default and we recommend they stay enabled as it makes build times significantly faster.

If you need to debug compiler errors it can be useful to disable parallel builds to step through the errors, you can disable parallel builds in the build settings like this:

```toml
[build]
parallel = false
```

{{import "footer"}}
