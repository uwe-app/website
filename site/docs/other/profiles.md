+++
description = "Release profiles"
+++

{{import "header"}}

The default release profile is `debug` and the `--release` option will generate a release build into `build/release`.

You may want to output to a different build directory for certain versions in which case you can use the profile option:

```
uwe --profile=v3.1.0-alpha1
```

Which will generate a debug build in `build/v3.1.0-alpha1`; if you want a release version in the target directory you can combine `--profile` with `--release`.

```
uwe --profile=v3.1.0-alpha1 --release
```

Profiles may assign options to the current build.

## Profile Settings

Profiles are useful for combining options into groups; sometimes we want to zip up this website and send if for review so we create a `dist` profile so we add a profile to the [[docs/reference/settings]]:

```toml
[profile.dist]
include-index = true
```

Then we can build using the `dist` profile like this:

```
uwe --profile=dist
```

Because we use the [[docs/reference/helpers/link]] exclusively all we need to do is instruct the compiler to include `index.html` for directory links and we have a build that will work using the `file:` scheme!

## Profile Options

These are the options that can be configured in a profile:

* `max-depth` Maximum depth to recurse (default: `Infinity`).
* `include-index` Include `index.html` for directory links (default: `false`).
* `release` Mark this build as a release (default: `false`).
* `incremental` Enable incremental builds (default: `false`).
* `pristine` Remove the build directory beforehand (default: `true`).
* `force` Force a full build when incremental builds are enabled (default `false`).
* `write-redirects` Write out HTML redirect pages (default `false`).
* `base` Base URL used to rewrite links when extracting folders (default `null`).
* `layout` Custom layout to use for the build (default `null`).
* `paths` Array of specific paths relative to `site` to compile (default `null`).

{{import "footer"}}