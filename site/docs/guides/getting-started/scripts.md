+++
description = "Add Javascript"
+++

{{import "header"}}

## Scripts

To add a custom script to *all your pages* create a `main.js` file in the `assets/scripts` folder. If you want to customize the `script` you can configure the site settings, for example to use modern ES6 imports you can set the `type` to `module`:

```toml
[script]
src = "assets/scripts/main.js"
type = "module"
```

When using this object style notation for script assets you can use any attributes of the [script element][].

Scripts follow the same convention as style sheets; to add scripts to all pages:

```toml
\[[page.scripts]]
src = "assets/scripts/lib.js"
type = "module"
```

Or for an individual page:

```markdown
+++
\[[scripts]]
src = "assets/scripts/custom.js"
+++

# \{{title}}
```

{{#>alert label="info"}}
Because your styles and scripts use the assets folder convention when you edit the file with live reload enabled (`uwe dev`) then all your pages will be compiled.
{{/alert}}

To add a `<noscript>` element create some content in the `partials/noscript.hbs` file, for example:

```html
<noscript>For an improved experience please enable Javascript.</noscript>
```

{{import "footer"}}

[script element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script
