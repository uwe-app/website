+++
description = "Highlight code samples"
+++

{{> crumbtrail}}

## {{title}}

To highlight code samples at compile time enable `syntax` in your site settings:

```toml
[syntax]
inline = true
```

When the `inline` option is set then the styles are embedded into the markup; it you prefer to use a stylesheet then omit the `inline` option and add a [syntax theme][] to your site styles.

### Runtime

If you would prefer to use Javascript to highlight your code samples at runtime there is a plugin for [highlight.js][]. To use it add the dependency in your site settings:

```toml
[dependencies."lib::highlight"]
version = "~10"
apply = { scripts = [ "/**/**" ], styles = [ "/**/**" ] }
```

[syntax theme]: https://github.com/uwe-app/runtime/tree/master/syntax/themes
[highlight.js]: https://highlightjs.org/
