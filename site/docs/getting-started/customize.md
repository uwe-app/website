+++
description = "Add favicon, styles and scripts to your pages"
+++

{{> crumbtrail}}

# {{title}}

{{> table-of-contents}}

## Favicon

Adding a favicon to your site is easy, just create an `assets/favicon.png` file; if you want to use a different path set `favicon` in the site settings.

```toml
favicon = "assets/favicon.ico"
```

{{#> note label="info"}}
The [favicon helper]({{ link "/docs/helpers/favicon/" }}) page has more information about how favicons are managed.
{{/note}}

## Styles

To add a custom stylesheet to your pages create a `main.css` file in the `assets/styles` folder.

The stylesheet will automatically be included in your pages, just run `uwe --live` and make changes to the `main.css` file to see your updates in the browser.

## Scripts

To add a custom script to your pages create a `main.js` file in the `assets/scripts` folder and set it as the `main` script in your [settings]({{ link "/docs/settings/" }}) by adding the `scripts` table to `site.toml`:

```toml
[scripts]
main = ["/assets/scripts/main.js"]
```

If you are using modern ES6 imports (which we recommend) you can set the `type` to `module`:

```toml
[scripts]
main = [{src = "/assets/scripts/main.js", type = "module"}]
```

When using this object style notation for script assets you can use any attributes of the [script element][].

{{#> note label="info"}}
Because your styles and scripts use the assets folder convention when you edit the file with live reload enabled (`uwe --live`) then all your pages will be compiled.
{{/note}}

To add a `<noscript>` element create some content in the `partials/noscript.hbs` file, for example:

```html
<noscript>For an improved experience please enable Javascript.</noscript>
```

{{> next-page menu="getting-started-idx"}}

[script element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script
