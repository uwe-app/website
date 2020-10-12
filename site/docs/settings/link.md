+++
description = "Control link behavior"
+++

{{> components}}

The `link` settings apply to the [link helper]({{ link "/docs/helpers/link/" }}) which we encourage you to use for all site links.

```toml
[link]
verify = true
relative = true
include-index = false
allow = []
```

* `verify` Verify link destinations (default: `true`).
* `relative` Generate relative links (default: `true`).
* `include-index` Reference `index.html` for directories (default: `false`).
* `allow` List of synthetic paths that are allowed (default: `[]`)

The `allow` list is helpful when you want to reference a path that is being dynamically generated, for example, if you were creating a stylesheet dynamically the link helper would fail to verify the destination as the file does not exists on disc so you can declare it here:

```toml
[link]
allow = [
  "assets/style.css"
]
```

Allow paths **must not** begin with a slash.

{{> back}}
