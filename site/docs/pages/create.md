+++
title = "Creating pages"
description = "How to create pages and define meta data"
+++

{{> crumbtrail}}

## {{title}}

{{> table-of-contents}}

Pages are Markdown documents that use a template engine for rendering; to add a new page to your website create a file with a `.md` extension in the `site` folder.

File names correspond to the links for your pages so you should follow some simple conventions when naming files:

* Use lowercase characters
* Use hyphens to delimit words (avoid spaces and underscores)

This will make your website links easy to understand and is considered best practices for *Search Engine Optimization* (SEO).

### Using HTML

If you want to also use plain HTML files with the `.html` extension then you can add this to your site settings:

```toml
[build]
extend = ["html"]
```

{{#> note type="tip" label="tip"}}
HTML files are not parsed as Markdown but you can use the [Markdown helper]({{link "/docs/helpers/markdown/"}}) if you need it.
{{/note}}

### Front Matter

Front matter is used to set page data; it must be at the beginning of the file; for HTML documents a comment is used for Markdown the `+++` delimiter is used.

#### Markdown

```markdown
+++
title = "Document title"
+++
## \{{title}}
```

#### HTML

```html
<!--
title = "Document title"
-->
<h2>\{{title}}</h2>
```

### Title

A page title is inferred from the file name and assigned to the page template data unless a specific title has been defined; when a page is an index file the name of the parent directory is used instead.

{{> next-page menu="pages-idx"}}


