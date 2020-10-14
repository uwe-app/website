+++
description = "Get page data"
+++

{{> crumbtrail}}

## {{title}}

The page helper gets the data for a specific page by URL path and assigns it as the context for the inner block template. It is an error if the page does not exist.

```handlebars
\{{#page "/docs/"}}
The title of the docs page is: \{{title}}
\{{/page}
```

This helper is particularly useful in conjunction with menus which expose the URL paths for the pages they reference. Imagine you have defined a menu called `docs` which is available to your page in `menus.docs` then you can iterate the paths and get page data for each entry like this:

```handlebars
{{{{raw}}}}{{#each menus.docs}}
{{#page this}}
<h3>{{title}}</h3>
<p>{{description}}</p>
{{/page}}
{{/each}}{{{{/raw}}}}
```

{{> back}}

