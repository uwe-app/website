+++
title = "Front Matter"
description = "Define page data in front matter"
+++

{{import "header"}}

{{> table-of-contents}}

Front matter is used to set page data; it must be at the beginning of the file. Markdown pages use the `+++` delimiter whilst for HTML documents a comment is used. The page data must be valid [TOML][].

### Markdown

```markdown
+++
title = "Page Title"
+++
# \{{title}}
```

### HTML

```html
<!--
title = "Page Title"
-->
<h1>\{{title}}</h1>
```

## Title & Description

The best practice is to assign a title and description to every page:

```markdown
+++
title = "Unique Page Title"
description  = "Brief description of the page content"
+++
# \{{title}}
```

{{#> note type="tip" label="tip"}}
A page title is inferred from the file name unless a specific title has been defined; when a page is an index file the name of the parent directory is used instead. Use this feature with [[docs/getting-started/directory-listing|directory listings]] to rapidly sketch your site pages.
{{/note}}

## Summary

The summary field is intended to be used as an introduction to the page content. It is used primarily when generating [[docs/content/feeds]] but could also be used by convention for an introductory paragraph that is rendered using the [[docs/reference/helpers/markdown|markdown helper]].

```markdown
+++
title = "Creating Pages"
description  = "How to create pages"
summary = """
An article about the basic data that can be assigned to pages using [TOML][].
"""
+++

# \{{title}}

\{{md summary}}

[TOML]: https://toml.io
```

By using the `summary` like this you can generate menus with rich text introductions.

## Image

Set the `image` path for an image preview to use when your page is shared on social sites a good practice is to set a default in the site settings:

```toml
[page]
image = "/assets/img/social.jpg"
```

Then you can override it for particular pages:

```markdown
+++
title = "Article Title"
image = "/assets/img/article-banner.jpg"
+++

# \{{title}}
```

{{#> note label="info"}}
Images must be relative paths; they are automatically made absolute when rendering.
{{/note}}

## Meta Data

To add custom meta data such as keywords to your pages use the `[meta]` table:

```toml
[meta]
keywords = "Create, Pages, Guide"
```

Renders to:

```html
<meta name="keywords" content="Create, Pages, Guide">
```

## Open Graph

We automatically create default open graph meta data from the title, description and image. You can customize these values in the `[open-graph]` table:


```toml
[open-graph]
title = "Title to use when shared on social websites"
```

Renders to:

```html
<meta property="og:title" content="Title to use when shared on social websites">
```

{{#> note label="info"}}
The `og:` prefix is not required the [open graph partial](https://github.com/uwe-app/plugins/blob/master/std/core/partials/open-graph.hbs) will insert it and the `og:url` property is always created automatically.
{{/note}}

If you want to set the `og:site_name` for all pages you can add this to your site settings:

```toml
[page.open-graph]
site_name = "UWE / Universal Web Editor"
```

## Permalinks

A `permalink` variable is available to all pages; to provide a permalink for any page is easy:

```html
<a href="\{{permalink}}" title="\{{title}}">Permalink</a>
```

Set the permalink path so you can share a permanent link that will always redirect to the page location making it safer to rename and move pages whilst keeping visitor's bookmarks intact. To configure a permalink redirect just add the path to the front matter:

```markdown
+++
title = "Article Title"
permalink = "/posts/article-link/"
+++

# \{{title}}
```

{{#> note label="info"}}
The `permalink` variable will use the redirect path for the page when `permalink` is set otherwise the page URL is used; the value is guaranteed to be an absolute URI once it is passed to a template.
{{/note}}

{{import "footer"}}

[TOML]: https://toml.io
[Open Graph]: https://ogp.me/
