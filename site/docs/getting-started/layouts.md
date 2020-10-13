+++
description = "Create a custom layout"
+++

{{> crumbtrail}}

## {{title}}

When you create a new project from a blueprint it will use the layout and partials from the [std::core][] plugin which is good to get up and running quickly but you may want to change the default layout.

To set a custom layout for your project create a `layout.hbs` file in the `site` directory; a good starting point would be to copy the [default layout][].

Note that you should keep the [std::core][] dependency so you don't have to import all the partials too.

### Standalone

Some files should not use a layout, we call these pages *standalone*; they are still parsed as templates and markdown is rendered.

For error pages you probably want to use `standalone` as they require absolute links:

```toml
[pages."404.html"]
standalone = true
rewrite-index = false
```

Another good example is the HTML files that Google uses for website ownership verification; we add these to the root of our website to prove that we own the domain name.

```toml
[pages."google17a6906a04e2c5e4.html"]
standalone = true
rewrite-index = false
```

Be aware if you set the `standalone` field globally no layouts will be applied!

{{> next-page menu="getting-started-idx"}}

[std::core]: https://github.com/uwe-app/plugins/tree/master/std/core
[default layout]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs
