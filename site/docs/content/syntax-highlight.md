+++
description = "Highlight code samples"
+++

{{> crumbtrail}}

# {{title}}

{{> table-of-contents}}

To highlight code samples at compile time enable `syntax` in your site settings:

```toml
[syntax]
inline = true
theme = "Solarized (light)"
```

When the `inline` option is set then the styles are embedded into the markup; it you prefer to use a stylesheet then omit the `inline` option and add a [syntax theme][] to your site styles.

## Themes

List of available theme names and corresponding stylesheets.

* [InspiredGithub](https://github.com/uwe-app/runtime/blob/master/syntax/themes/inspired-git-hub.css)
* [Solarized (dark)](https://github.com/uwe-app/runtime/blob/master/syntax/themes/solarized-dark.css)
* [Solarized (light)](https://github.com/uwe-app/runtime/blob/master/syntax/themes/solarized-light.css)
* [base16-eighties.dark](https://github.com/uwe-app/runtime/blob/master/syntax/themes/base16-eighties-dark.css)
* [base16-mocha.dark](https://github.com/uwe-app/runtime/blob/master/syntax/themes/base16-mocha-dark.css)
* [base16-ocean.dark](https://github.com/uwe-app/runtime/blob/master/syntax/themes/base16-ocean-dark.css)
* [base16-ocean.light](https://github.com/uwe-app/runtime/blob/master/syntax/themes/base16-ocean-light.css)

## Profiles

Syntax highlighting is an expensive task and can slow down compile times if you have lots of pages and code samples. The `profiles` setting let's you conditionally syntax highlight for certain build profiles, for example:

```toml
[syntax]
inline = true
theme = "Solarized (light)"
profiles = ["release"]
```

Would only perform static syntax highlighting for the `release` build profile.

## Runtime

If you would prefer to use Javascript to highlight your code samples at runtime there is a plugin for [highlight.js][]. To use it add the dependency in your site settings:

```toml
[dependencies."lib::highlight"]
version = "~10"
apply = { scripts = [ "/**/**" ], styles = [ "/**/**" ] }
```

{{> next-page menu="content-idx"}}

[syntax theme]: https://github.com/uwe-app/runtime/tree/master/syntax/themes
[highlight.js]: https://highlightjs.org/
