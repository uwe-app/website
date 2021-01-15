+++
description = "About the offline documentation"
+++

{{import "header"}}

The offline documentation is downloaded when the platform tools are installed; to open the documentation run:

```text
uwe docs
```

The documentation is distributed as a static website bundled in a plugin so it is possible to remove the documentation using our tools; if the plugin has been removed then running `uwe docs` will try to download and install the documentation again.

To see this behavior in action:

```text
# Remove the documentation plugin
upm rm std::documentation
# Open the docs
uwe docs
```

{{import "footer"}}

[semver]: https://semver.org/
