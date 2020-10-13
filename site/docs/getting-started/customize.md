+++
description = "Add favicon, styles and scripts to your pages"
+++

{{> crumbtrail}}

## {{title}}

### Favicon

Adding a favicon to your site is easy, just create an `assets/favicon.png` file; the [favicon helper]({{ link "/docs/helpers/favicon/" }}) page has more information.

### Styles

To add a custom stylesheet to your pages create a `style.css` file in the `assets/css` folder and set it as the `main` stylesheet in your [settings]({{ link "/docs/settings/" }}) by adding the `styles` table to `site.toml`:

```toml
[styles]
main = ["/assets/css/style.css"]
```

The stylesheet will automatically be included in your pages, just run `uwe --live` and make changes to the `style.css` file to see your updates in the browser.

### Scripts

To add a custom script to your pages create a `main.js` file in the `assets/js` folder and set it as the `main` script in your [settings]({{ link "/docs/settings/" }}) by adding the `scripts` table to `site.toml`:

```toml
[scripts]
main = ["/assets/js/main.js"]
```

If you are using modern ES6 imports (which we recommend) you can set the `type` to `module`:

```toml
[scripts]
main = [{src = "/assets/js/main.js", type = "module"}]
```

When using this object style notation for script assets you can use any attributes of the [script element][].

<!-- TODO: make this a note -->

Because your styles and scripts use the assets folder convention when you edit the file with live reload enabled (`uwe --live`) then all your pages will be compiled.

{{> next-page menu="getting-started-idx"}}

[script element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script
