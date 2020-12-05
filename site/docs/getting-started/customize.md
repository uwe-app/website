+++
description = "Add favicon, styles and scripts to your pages"
+++

{{import "header"}}

{{> table-of-contents}}

## Favicon

Adding a favicon to your site is easy, just create an `assets/favicon.png` file; if you want to use a different path set `icon` in the site settings.

```toml
icon = "assets/favicon.ico"
```

{{#> note label="info"}}
The [favicon notes]({{ link "/docs/notes/favicon/" }}) has more details about how icons are managed.
{{/note}}

## Styles

To add a custom stylesheet to *all your pages* create a `main.css` file in the `assets/styles` folder; or if you want to use a different file for your main style sheet:

```toml
[style]
src = "assets/styles/site.css"
```

To add another style sheet to all pages, perhaps for print media, you can use the global page data:

```toml
\[[page.styles]]
src = "assets/styles/print.css"
media = "print"
```

To assign style sheets to particular pages use front matter:

```markdown
+++
\[[styles]]
src = "assets/styles/custom.css"
+++

# \{{title}}
```

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

{{#> note label="info"}}
Because your styles and scripts use the assets folder convention when you edit the file with live reload enabled (`uwe --live`) then all your pages will be compiled.
{{/note}}

To add a `<noscript>` element create some content in the `partials/noscript.hbs` file, for example:

```html
<noscript>For an improved experience please enable Javascript.</noscript>
```

## Header and Footer

To customize the header and footer for the website change the content in the [partials/header.hbs](https://github.com/uwe-app/plugins/blob/master/std/core/partials/header.hbs) and [partials/footer.hbs](https://github.com/uwe-app/plugins/blob/master/std/core/partials/footer.hbs) files; the default templates are placeholders.

When you use a blueprint to create a new project these files already exist.

## Content Area

The [partials/content.hbs](https://github.com/uwe-app/plugins/blob/master/std/core/partials/content.hbs) template just wraps each page in a `<main>` element; if you want to change this part of the default layout create a `partials/content.hbs` file to override the default.

{{import "footer"}}

[script element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script
