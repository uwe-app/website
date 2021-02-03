+++
description = "Release profiles"
+++

{{import "header"}}

The default profile for the `build` command  is `release` which will generate a build into `build/release`; for the live reload server started using the `dev` command the default profile is `debug` which writes files to `build/debug`.

To create a custom build profile first define it in the [[docs/guides/getting-started/site-settings]]. The example profile belowis useful to zip up a website and send it for review:

```toml
[profile.dist]
release = true
include-index = true
```

Then you can use the `--profile` option:

```
uwe build --profile=dist
```

Because we added the `include-index` option links to directories will append explicit `index.html` references so the website should work using the `file:` scheme.

<!-- TODO: link to profile settings -->

{{import "footer"}}
