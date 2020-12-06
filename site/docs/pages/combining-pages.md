+++
description = "Combine pages into a single page"
+++

{{import "header"}}

For print media it can be useful to combine multiple pages into a single page; the [[docs/helpers/render|render helper]] allows us to render a single page by path.

To combine several pages we can either call the `render` helper multiple times:

```handlebars
\{{render "/docs/pages/clean-urls/"}}
\{{render "/docs/pages/trailing-slash/"}}
```

Or we could use an iterator to render multiple pages; for example:

```handlebars
{{{{raw~}}}}
{{#menu "posts"}}
<article>{{render this.href}}</article>
{{/menu}}
{{{{~/raw}}}}
```

{{import "footer"}}
