+++
description = "Change file extensions"
+++

{{> components}}

If you need finer control over how file extensions map to pages the `types` setting allows full control and is given sensible default values:

```toml
[build]
types = {md = {map = "html", markdown = true}}
```

* `map` Map to destination extension.
* `markdown` Render this type as markdown.

If you wanted to parse Markdown documents using the templating system and output Markdown documents you could override the type like this:

```
[build]
types = {md: {}}
```

### Extend

Often you may just wish to add some types to be render as templates in which case use the `extend` keyword:

```toml
[build]
extend = ["html"]
```

{{> back}}
