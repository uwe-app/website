+++
title = "Creating pages"
description = "How to create pages and define meta data"
+++

{{> crumbtrail}}

# {{title}}

{{> table-of-contents}}

Pages are Markdown documents that use a template engine for rendering; to add a new page to your website create a file with a `.md` extension in the `site` folder.

File names correspond to the links for your pages so you should follow some simple conventions when naming files:

* Use lowercase characters
* Use hyphens to delimit words (avoid spaces and underscores)

This will make your website links easy to understand and is considered best practices for *Search Engine Optimization* (SEO).

## Using HTML

If you want to also use plain HTML files with the `.html` extension then you can add this to your site settings:

```toml
[build]
extend = ["html"]
```

{{#> note type="tip" label="tip"}}
HTML files are not parsed as Markdown but you can use the [Markdown helper]({{link "/docs/helpers/markdown/"}}) if you need it.
{{/note}}

{{#> note type="warn" label="warn"}}
Mixing HTML with Markdown makes naming collisions more likely, see [clean URLS]({{ link "/docs/pages/clean-urls/" }}) for more information.
{{/note}}

## Front Matter

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
A page title is inferred from the file name unless a specific title has been defined; when a page is an index file the name of the parent directory is used instead. Use this feature with [directory index listings]({{ link "/docs/getting-started/directory-index/" }}) to rapidly sketch your site pages.
{{/note}}

## Summary

The summary field is intended to be used as an introduction to the page content. It is used primarily when generating [feeds]({{ link "/docs/content/feeds/" }}) but could also be used by convention for an introductory paragraph that is rendered using the [markdown helper]({{ link "/docs/helpers/markdown/" }}).

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

We automatically create default open graph meta data from the title and description, you can customize these values in the `[open-graph]` table:


```toml
[open-graph]
title = "Creating pages using the UWE system"
```

Renders to:

```html
<meta property="og:title" content="Creating pages using the UWE system">
```

{{#> note label="note"}}
The `og:` prefix is not required the [open graph partial](https://github.com/uwe-app/plugins/blob/master/std/core/partials/open-graph.hbs) will insert it.
{{/note}}

{{> next-page menu="pages-idx"}}

[TOML]: https://toml.io
[Open Graph]: https://ogp.me/
