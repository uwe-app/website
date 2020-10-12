+++
description = "Configure the build"
+++

{{> components}}

Settings for the build process, for example:

```toml
[build]
source = "site"
target = "build"
```

* `source` Read source files from the input directory (default: `site`).
* `target` Destination for all builds (default: `build`).
* `strict` Error when an unknown template variable is detected (default: `true`).
* `assets` Path to use for finding assets (default: `assets`).
* `partials` Path to use for finding partials (default: `partials`).
* `data-sources` Path to use for finding data sources(default: `data-sources`).
* `resources` Path to use for finding resources (default: `resources`).
* `rewrite-index` Rewrite to directory with index.html (default: `false`).
* `render` List of additional file extensions to render as pages (default: `[]`).

Relative paths are resolved using `source` so partials should go in `site/partial` etc.

### Extend

The `extend` list can define extra file extensions to treat as page templates; these values are appended to `render` in the [extension settings]({{ link "/docs/settings/extension/" }}).

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

{{> back}}
