+++
description = "Get the size of a file"
+++

{{import "header"}}

The `file-size` helper can be used to determine the length of a file; combined with the [[docs/reference/helpers/bytes]] helper is can be used to show the size of a file offered for download.

If an absolute path is given it is resolved relative to the `site` directory; the argument may be a raw path or a quoted string.

## Arguments

* `String|Path` The file to inspect.

## Example

Print the number of bytes in `index.md`:

```handlebars
\{{file-size /index.md}}
```

Renders as:

```handlebars
{{file-size /index.md}}
```

Combine this with the [[docs/reference/helpers/bytes]] helper for a human friendly file size:

```
\{{bytes (file-size /index.md)}}
```

Renders as:

```
{{bytes (file-size /index.md)}}
```

{{import "footer"}}
