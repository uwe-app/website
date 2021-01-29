+++
description = "Adding plugins to a project"
+++

{{import "header"}}

To add plugins to a project put them in the `[dependencies]` section of the site settings and they will be resolved from the plugin registry:

```toml
[dependencies]
"std::core" = "~4"
```

{{#> note}}
Plugin names must be quoted.
{{/note}}

All dependencies must specify a name and version range which can be an exact version (`1.0.0`) or a request range which allows for dependencies to be updated within the matching range. Versions follow the [semver][] specification.

## Local Dependencies

Plugins can also be referenced by file system `path` which is not portable but is useful for debugging or during the development phase when creating a plugin:

```toml
[dependencies]
"std::core" = { path = "../../plugins/std/core", version = "~4" }
```

## Archive Dependencies

If you have packaged a plugin using `upm pack` it is also possible to load the plugin from the archive:

```toml
[dependencies."std::core"]
version = "*"
archive = "../../plugins/std/core/package.tar.xz"
```

## Git Dependencies

Plugin dependencies can also be resolved using a git URL:

```toml
[dependencies."std::core"]
version = "*"
git = "https://github.com/organization/repo"
```

To use a sub-folder within the repository a `prefix` can be used:

```toml
[dependencies."std::core"]
version = "*"
git = "https://github.com/uwe-app/plugins"
prefix = "std/core"
```

{{import "footer"}}

[semver]: https://semver.org/
[main.hbs]: https://github.com/uwe-app/plugins/blob/main/std/core/layouts/main.hbs
