+++
description = "Show tips, warnings and other notes"
+++

{{> crumbtrail}}

# {{title}}

{{> table-of-contents}}

A common pattern is to show notes such as tips, warnings or info messages. The [std::note](https://github.com/uwe-app/plugins/tree/master/std/note) plugin provides a [note block partial](https://github.com/uwe-app/plugins/blob/master/std/note/partials/note.hbs) which makes it easy to integrate notes in to your pages.

You should add the dependency to your site settings to use it:

```toml
[dependencies]
"std::note" = { version = "~1" }
```

## Usage

Use the note partial like this:

```handlebars
{{{{raw}}}}
{{#> note}}
This is a note with *seamless* Markdown handling.
{{/note}}{{{{/raw}}}}
```

Renders to:

{{#> note}}
This is a note with *seamless* Markdown handling.
{{/note}}

## Type

Add a `type` which is appended to the `class`:

```handlebars
{{{{raw}}}}
{{#> note type="warn"}}
This is a warning.
{{/note}}{{{{/raw}}}}
```

Renders to:

{{#> note type="warn"}}
This is a warning.
{{/note}}

## Label

Add a `label` to render a span inside:

```handlebars
{{{{raw}}}}
{{#> note type="error" label="error"}}
This is an error.
{{/note}}{{{{/raw}}}}
```

Renders to:

{{#> note type="error" label="error"}}
This is an error.
{{/note}}

## Style

If you want to use the default [styles](https://github.com/uwe-app/plugins/blob/master/std/note/styles/note.css) apply them in the dependency:

```toml
[dependencies]
"std::note" = { version = "~1", apply = { styles = [ "/**/**" ] } }
```

{{> next-page menu="design-patterns-idx"}}

