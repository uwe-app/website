+++
description = "Include files"
+++

{{import "header"}}

The `include` helper can be used to include files into your pages; normally it is used for examples but can also be useful to embed assets. Relative paths are resolved from the file calling the `include` helper unless they start with a `/` which resolves the path from the `site` folder.

It is an error attempting to include a file outside the `site` source folder.

{{#> note label="info"}}
Use the *includes* folder [[docs/guides/getting-started/conventions]] to automatically ignore included files.
{{/note}}


{{#> note label="warn" type="warn"}}
If you use this helper inside a partial loaded from a plugin relative paths are resolved from the plugin partial file which is probably not what you want; instead use an absolute path to resolve from the project `site` folder.
{{/note}}


## Arguments

* `String|Path` The file system path to include.

## Parameters

* `binary`: Read the file as binary rather than a UTF-8 encoded string.
* `base64`: Encode the file to base64.

## Example

Use an absolute path to resolve from the `site` folder:


```handlebars
\{{include /assets/svg/menu.svg}}
```

Use a quoted string to include characters disallowed in paths:

```handlebars
\{{include "%file.txt"}}
```

A common technique for examples is to put the `include` inside a fenced code block:

````markdown
```markdown
\{{include ../../../includes/uwe/new.txt~}}
```
````

Embed an SVG file using a `data:` URI:

```html
<img src="data:image/svg+xml;base64,\{{include /assets/svg/menu.svg base64=true}}" />
```

Use the `binary` parameter to embed a PNG file:

```html
<img src="data:image/png;base64,\{{include /assets/icon.png base64=true binary=true}}" />
```

{{import "footer"}}
