+++
description = "Highlight code samples"
+++

{{import "header"}}

{{> table-of-contents}}

Syntax highlighting colors can either use *inline* styles or an *external* style sheet; which kind you choose depends upon your site design and highlighting preferences. Inline styles are convenient and will make your pages load a little faster but do not allow customization of the colors as they use pre-defined themes. If you want more control over the colors use an external style sheet.

## Inline Styles

To highlight code samples at compile time using *inline styles* enable a `theme` for `[syntax]` in your site settings and add the `std::syntax` plugin to the project dependencies:

```toml
[syntax]
theme = "Solarized (light)"

[dependencies."std::syntax"]
version = "^1"
```

See [themes](#themes) for the list of available theme names.

## External Stylesheet

To use an external style sheet the `[syntax]` table *must be defined* and you should add a style sheet to perform the styling. This example uses a style sheet from the `std::syntax` plugin:

```toml
[syntax]

[dependencies."std::syntax"]
version = "^1"
apply = { styles = [ { to = "**", filter = "solarized-light.css" } ] }
```

Theme style sheets are automatically generated and include a background color by default which can be intrusive when supporting `prefers-color-scheme`. To remove the background color add this style rule to your main style sheet:

```css
.code {
  background-color: transparent;
}
```

## Custom Theme

To create your own theme copy one of the [themes](#themes) into your `assets/styles` directory and apply it to all pages. For example if the file were called `highlight.css`:

```toml
# Must enable syntax highlighting
[syntax]

# Must use the std::syntax plugin for language definitions
[dependencies."std::syntax"]
version = "^1"

\[[page.styles]]
src = "assets/styles/highlight.css"
```

## Themes

List of available theme names and corresponding stylesheets.

* [InspiredGithub](https://github.com/uwe-app/syntax/blob/main/styles/inspired-git-hub.css)
* [Solarized (dark)](https://github.com/uwe-app/syntax/blob/main/styles/solarized-dark.css)
* [Solarized (light)](https://github.com/uwe-app/syntax/blob/main/styles/solarized-light.css)
* [base16-eighties.dark](https://github.com/uwe-app/syntax/blob/main/styles/base16-eighties-dark.css)
* [base16-mocha.dark](https://github.com/uwe-app/syntax/blob/main/styles/base16-mocha-dark.css)
* [base16-ocean.dark](https://github.com/uwe-app/syntax/blob/main/styles/base16-ocean-dark.css)
* [base16-ocean.light](https://github.com/uwe-app/syntax/blob/main/styles/base16-ocean-light.css)

## Profiles

Syntax highlighting is an expensive task and can slow down compile times if you have lots of pages and code samples. The `profiles` setting let's you conditionally syntax highlight for certain build profiles, for example:

```toml
[syntax]
theme = "Solarized (light)"
profiles = ["release"]
```

Would only perform syntax highlighting for the `release` build profile.

## Runtime Javascript

We recommend using build time syntax highlighting so the browser does not need to re-render the page when highlighting Javascript executes because it can cause the content to jump around which may be disconcerting for your visitors. However, if you would prefer to use Javascript to highlight your code samples at runtime there is the [lib::highlight](https://github.com/uwe-app/plugins/tree/main/lib/highlight) plugin for [highlight.js][]. To use it add the dependency in your site settings:

```toml
[dependencies."lib::highlight"]
version = "~10"
apply = { scripts = [ "**" ], styles = [ { to = "**", filter = "monokai.css" } ] }
```

{{import "footer"}}

[syntax theme]: https://github.com/uwe-app/runtime/tree/main/syntax/themes
[highlight.js]: https://highlightjs.org/
