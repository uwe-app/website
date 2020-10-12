+++
description = "Create a custom layout"
+++

{{> crumbtrail}}

## {{title}}

When you create a new project from a blueprint it will use the layout and partials from the [std::core][] plugin which is good to get up and running quickly but you may want to change the default layout.

To set a custom layout for your project create a `layout.hbs` file in the `site` directory; a good starting point would be to copy the [default layout][].

Note that you should keep the [std::core][] dependency so you don't have to import all the partials too.

{{> next-page menu="getting-started-idx"}}

[std::core]: https://github.com/uwe-app/plugins/tree/master/std/core
[default layout]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs
