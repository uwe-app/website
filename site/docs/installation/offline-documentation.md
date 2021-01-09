+++
description = "Install and update the offline documentation"
+++

{{import "header"}}

To browse the documentation whilst offline first it needs to be downloaded; whilst connected to the internet run this command to fetch the documentation plugin:

```text
uwe docs
```

Afterwards when you run `uwe docs` again the documentation is cached and will be available offline.

Sometimes you may want to update to a newer version of the documentation; whilst connected to the internet update the registry of plugins:

```text
upm update
```

Then if a newer version of the documentation is available it will be downloaded the next time you run `uwe docs`.

The `docs` command also accepts a [semver][] version range if you need to view a specific version of the documentation, for example:

```
uwe docs 0.42.8
```

{{import "footer"}}

[semver]: https://semver.org/
