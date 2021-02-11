+++
description = "Render markdown"
content = "This is some *Markdown* content."
+++

{{import "header"}}

The `markdown` helper renders Markdown content and is designed to be used in Markdown or HTML documents; it provides several ways to evaluate Markdown so we can seamlessly mix HTML and Markdown.

## Arguments

* `String|Path` Literal markdown string value or name of a partial.

## Parameters

* `render` Force render inside an HTML context.

## Example

The examples assume we have a snippet of Markdown in `site/partials/snippet.hbs`:

```markdown
This is some *Markdown* content.
```

Then in a Markdown document these examples:

```handlebars
{{{{~raw}}}}
+++
content = "This is some *Markdown* content."
+++
<!-- Render a partial from the site/partials/snippet.hbs file -->
{{markdown snippet}}
<!-- Force render inside HTML content -->
<section class="section-style">
{{markdown snippet render=true}}
</section>
<!-- Render with an inner block template -->
{{#markdown}}This is some *Markdown* content.{{/markdown}}
<!-- Render using a string literal -->
{{markdown "This is some *Markdown* content."}}
<!-- Render a variable from the front matter -->
{{~markdown content}}
{{{{~/raw}}}}
```

Renders to this markup:

```html
{{markdown snippet render=true ~}}
<section class="section-style">
{{markdown snippet render=true ~}}
</section>
{{markdown "This is some *Markdown* content." render=true ~}}
{{#markdown render=true ~}}This is some *Markdown* content.{{/markdown}}
{{~markdown content render=true~}}
```

## Render

This helper knows the file context so when you are in HTML files there is no need to use the `render` parameter:

```handlebars
<section class="section-style">
  \{{markdown snippet}}
</section>
```

{{#>alert label="info"}}
The only time you should use `render` is in HTML *inside a Markdown document*.
{{/alert}}

{{#>alert type="warn" label="warn"}}
Be careful using the block syntax `\{{#markdown}}` in HTML documents as leading whitespace can be mistakenly interpreted as fenced code blocks.
{{/alert}}

{{import "footer"}}
