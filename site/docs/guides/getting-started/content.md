+++
description = "Set a favicon, header and footer"
+++

{{import "header"}}

{{> table-of-contents}}

## Favicon

Adding a favicon to your site is easy, just create a `favicon.ico` file in the `site` folder; if you want to use a different path set `icon` in the site settings.

```toml
icon = "favicon.svg"
```

However, we recommend using the default location as some applications like RSS readers will load the file by convention. If you have a PNG file for the icon rename it to `.ico` and it will work; a good size is 32x32 pixels.

{{#> note label="info"}}
When a favicon file exists and the build is not a release a random query string is appended to bypass the browser favicon cache.

When no icon is available a transparent image is used so that the browser network inspector does not show spurious 404 errors for the network requests that browsers automatically generate for favicons.
{{/note}}

## Partials

To create custom partials for your website just add templates to the `site/partials` directory using a `.hbs` file extension and they are automatically registered using the file name. So the partial template file `site/partials/header.hbs` can be included with:

```handlebars
{{{{raw}}}}{{> header}}{{{{/raw}}}}
```

This follows the standard syntax for calling partials when using Handlebars. See the [Handlebars documentation on partials](https://handlebarsjs.com/guide/partials.html) for more details.

## Header and Footer

To customize the header and footer for the website change the content in the `partials/header.hbs` and `partials/footer.hbs` files; the default templates are placeholders.

When you use a blueprint to create a new project these files already exist.

## Aside

To create content for an `aside` element that could be used for a global navigation create the `partials/aside.hbs` file; see the [[docs/cookbook/sidebar]] documentation for a common navigation pattern.

## Structure

It is useful to know the basic structure of the markup generated when using the default layout:

```html
<body>
  <aside></aside> <!-- aside.hbs -->
  <main>
    <header></header> <!-- header.hbs -->
    <article>
      <!-- document.md -->
    </article>
    <footer></footer> <!-- footer.hbs -->
  </main>
</body>
```

{{import "footer"}}
