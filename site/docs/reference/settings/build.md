+++
description = "Configure the build"
+++

{{import "header"}}

The `[build]` table sets the default compiler profile; see [[docs/in-depth/build-profiles]] for more information.

* `source` Read source files from the input directory (default `site`)
* `target` Destination for all builds (default `build`)
* `strict` Error when an unknown template variable is detected (default `true`)
* `rewrite-index` Rewrite to directory with index.html (default `true`)
* `assets` Path to use for finding assets (default `assets`)
* `partials` Path to use for finding partials (default `partials`)
* `collections` Path to use for finding collections (default `collections`)
* `extend` Additional file extensions to be rendered as templates (optional)

### Extend

The `extend` list can define extra file extensions to treat as page templates; these values are appended to `render` in the [[docs/reference/settings/extension|extension settings]].

To support parsing HTML pages as well as markdown documents:

```toml
[build]
extend = ["html"]
```

It is possible to include any type of file; we use it at times to render JSON documents:

```toml
[build]
extend = ["html", "json"]
```

{{import "footer"}}
