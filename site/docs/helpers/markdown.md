+++
description = "Markdown snippets"
content = "This is some *Markdown* content."
+++

{{> crumbtrail}}

# {{title}}

The `md` helper is designed to be used in Markdown or HTML documents; it provides several ways to evaluate Markdown so we can seamlessly mix HTML and Markdown.

## Usage

The examples assume we have a snippet of Markdown in `site/partials/snippet.hbs`:

```markdown
This is some *Markdown* content.
```

Then in a Markdown document these examples:

```handlebars
{{{{raw}}}}
+++
content = "This is some *Markdown* content."
+++
<!-- Render a partial from the site/partials/snippet.hbs file -->
{{md snippet}}
<!-- Force render inside HTML content -->
<section class="section-style">
{{md snippet render=true}}
</section>
<!-- Render with an inner block template -->
{{#md}}This is some *Markdown* content.{{/md}}
<!-- Render using a string literal -->
{{md "This is some *Markdown* content."}}
<!-- Render a variable from the front matter -->
{{md content}}{{{{/raw}}}}
```

Will yield this markup:

```html
{{md snippet render=true ~}}
<section class="section-style">
{{md snippet render=true ~}}
</section>
{{md "This is some *Markdown* content." render=true ~}}
{{#md render=true ~}}This is some *Markdown* content.{{/md}}{{md content render=true ~}}
```

## Render

This helper knows the file context so when you are in HTML files there is no need to use the `render` parameter:

```handlebars
<section class="section-style">
  \{{md snippet}}
</section>
```

{{#> note label="note"}}
The only time you should use `render` is in HTML *inside a Markdown document*.
{{/note}}

{{#> note type="warn" label="warn"}}
Be careful using the block syntax `\{{#md}}` in HTML documents as leading whitespace can be mistakenly interpreted as fenced code blocks.
{{/note}}

{{> back}}
