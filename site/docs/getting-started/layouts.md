+++
description = "Create a custom layout"
+++

{{import "header"}}

When you create a new project from a blueprint it will use the layout and partials from the [std::core][] plugin which is good to get up and running quickly but you may want to change the default layout.

To set a custom layout for your project create a `main.hbs` file in the `site/layouts` directory; a good starting point would be to copy the [default layout][].

{{#> note label="info"}}
Keep the [std::core][] dependency so you don't have to import all the partials too.
{{/note}}

## Custom Layouts

If your site needs separate layouts for certain sections you can create more files in the `layouts` folder and they can then be assigned to your pages using the `layout` parameter.

Imagine you need a different layout for the documentation section on your website; you could create a new layout in `site/layout/docs.hbs` and then apply it to specific pages in the front matter like this:

```markdown
+++
title = "Documentation"
layout = "docs"
+++
```

## Standalone

Some files should not use a layout, we call these pages *standalone*; they are still parsed as templates and markdown is rendered.

A good example is the HTML files that Google uses for website ownership verification; we add these to the root of our website to prove that we own the domain name.

```toml
[pages."google17a6906a04e2c5e4.html"]
standalone = true
rewrite-index = false
```

Be aware if you set the `standalone` field globally no layouts will be applied!

{{import "footer"}}

[std::core]: https://github.com/uwe-app/plugins/tree/main/std/core
[default layout]: https://github.com/uwe-app/plugins/blob/main/std/core/layouts/main.hbs
