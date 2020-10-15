+++
description = "Adding plugins to a project"
+++

# Plugin Dependencies

To add plugins to a project you specify them in the `[dependencies]` section of the site settings:

```toml
[dependencies]
"std::core" = { version = "~1" }
```

All dependencies must specify a version request which can be an exact version (`1.0.0`) or a request range which allows for dependencies to be updated within the matching range.

Versions follow the [semver][] specfication.

[semver]: https://semver.org/
