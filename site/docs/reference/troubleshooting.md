+++
description = "How to fix certain errors"
+++

{{import "header"}}

## Package digests do not match error

Sometimes you may get an error with package digests not matching which can be caused if a package is force published and the old checksum is in a lock file.

```
Package digests do not match /path/to/downloads/std::feed::2.0.0.tar.xz
```

The workaround is to remove the plugin downloads cache so that the new version is downloaded and installed:

```
upm clean downloads
```

## Italic fonts not showing in the editor

If you assign `font-style: italic;` to a font declarared in a `@font-face` rule you should also ensure that the style rules using the font also specify `font-style: italic;` otherwise the font may not render correctly when displayed in the editor preview.
