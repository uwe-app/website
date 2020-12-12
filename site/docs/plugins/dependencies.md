+++
description = "Adding plugins to a project"
+++

{{import "header"}}

To add plugins to a project you specify them in the `[dependencies]` section of the site settings and they will be resolved from the plugin registry:

```toml
[dependencies]
"std::core" = { version = "~4" }
```

All dependencies must specify a version request which can be an exact version (`1.0.0`) or a request range which allows for dependencies to be updated within the matching range. Versions follow the [semver][] specification.

## Local Dependencies

Plugins can also be referenced by file system `path` which is not portable but is useful for debugging or during the development phase when creating a plugin:

```toml
[dependencies]
"std::core" = { path = "../../plugins/std/core", version = "~4" }
```

## Archive Dependencies

If you have packaged a plugin (using `upm pack`) it is also possible to load the plugin from the archive:

```toml
[dependencies."std::core"]
version = "~4"
archive = "../../plugins/std/core/package.tar.xz"
```

## Git Dependencies

Plugin dependencies can also be resolved using a git URL:

```toml
[dependencies."std::core"]
version = "~4"
git = "https://github.com/organization/plugin-repo"
```

{{import "footer"}}

[semver]: https://semver.org/
[main.hbs]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs
