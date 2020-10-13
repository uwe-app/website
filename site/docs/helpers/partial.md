+++
description = "Render a page"
+++

{{> crumbtrail}}

## {{title}}

The `partial` helper is a special helper for rendering an entire page. Usually it is used in a layout to render the current page but can also be called with a specific page which is useful when combining multiple pages into a single page, for example to generate a page that is convenient for printing.

When called with no parameters it inspects the data for the current page and uses that page template for rendering.

```handlebars
\{{partial}}
```

The canonical example of using this helper is in the [default main layout][] of the [std::core][] plugin.

Alternatively you can pass the path of a specific page to render:


```handlebars
\{{partial "/docs/other/strict-mode/"}}
```

An example of iterating a menu and rendering each page in the list can be seen in the [print page][] of the [std::book][] plugin.

{{> back}}

[default main layout]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs
[print page]: https://github.com/uwe-app/plugins/blob/master/std/book/pages/print.md
[std::core]: https://github.com/uwe-app/plugins/tree/master/std/core
[std::book]: https://github.com/uwe-app/plugins/tree/master/std/book
