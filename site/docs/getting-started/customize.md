+++
description = "Add styles and scripts to your pages"
+++

{{> components}}

## Styles

To add a custom stylesheet to your pages create the file:

```text
mkdir -p site/assets/css && touch site/assets/css/style.css
```

And set it as the `main` stylesheet in your [settings]({{ link "/docs/settings/" }}) by adding the `styles` table to `site.toml`:

```toml
[styles]
main = ["/assets/css/style.css"]
```

The stylesheet will automatically be included in your pages, just run `uwe --live` and make changes to the `style.css` file to see your updates in the browser.

## Scripts

To add a custom script to your pages create the file:

```text
mkdir -p site/assets/js && touch site/assets/js/main.js
```

And set it as the `main` script in your [settings]({{ link "/docs/settings/" }}) by adding the `scripts` table to `site.toml`:

```toml
[scripts]
main = ["/assets/js/main.js"]
```

<!-- TODO: make this a note -->

Because your styles and scripts are in the [assets]({{ link "/docs/assets/" }}) folder when you edit the file with live reload enabled (`uwe --live`) then all your pages will be compiled.
