+++
title = "Next / Previous Links"
description = "Navigate to next and previous pages"
+++

{{import "header"}}

For navigation menus that are ordered it is a good user experience (UX) to provide links to the next and previous pages in the sequence.

Because this is a common requirement we created the [std::menu][] plugin which provides the `next-page`, `prev-page` and `next-prev` partials.

To use these partials first add the plugin to your project `[dependencies]` in `site.toml`:

```toml
"std::menu" = { version = "~1", apply = { styles = [ "**" ] } }
```

Afterwards, you can use the partials passing the name of a menu as the source for the navigation list, for example:

```handlebars
\{{> next-prev menu="primary"~}}
```

{{#> note label="info"}}
Only use these sequential navigation partials on pages that exist in the menu definition otherwise nothing will be rendered!
{{/note}}

{{import "footer"}}

[std::menu]: https://github.com/uwe-app/plugins/tree/main/std/menu
