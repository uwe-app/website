+++
description = "Strict mode and how to disable it"
+++

{{> crumbtrail}}

## {{title}}

Templates are parsed with strict mode enabled so it is an error if a variable does not exist; it is possible to disable strict mode in the [settings]({{ link "/docs/settings/" }}) however it is not recommended.

It is a build setting so if you want to disable it use:

```toml
[build]
strict = false
```

{{> next-page menu="other-idx"}}
