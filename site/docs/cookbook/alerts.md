+++
description = "Show tips, warnings and other notes"
+++

{{import "header"}}

{{> table-of-contents}}

A common pattern is to show alerts such as tips, warnings or info messages. The [std::alert](https://github.com/uwe-app/plugins/tree/main/std/alert) plugin provides a [note block partial](https://github.com/uwe-app/plugins/blob/main/std/alert/partials/alert.hbs) which makes it easy to integrate notes in to your pages.

You should add the dependency to your site settings to use it:

```toml
[dependencies]
"std::alert" = "~1"
```

## Usage

Use the note partial like this:

```handlebars
{{{{~raw}}}}
{{#>alert}}
This is a note with *seamless* Markdown handling.
{{/alert}}
{{{{~/raw}}}}
```

Renders to:

{{#>alert}}
This is a note with *seamless* Markdown handling.
{{/alert}}

## Type

Add a `type` which is appended to the `class`:

```handlebars
{{{{~raw}}}}
{{#>alert type="warn"}}
This is a warning.
{{/alert}}
{{{{~/raw}}}}
```

Renders to:

{{#>alert type="warn"}}
This is a warning.
{{/alert}}

## Label

Add a `label` to render a span inside:

```handlebars
{{{{~raw}}}}
{{#>alert type="error" label="error"}}
This is an error.
{{/alert}}
{{{{~/raw}}}}
```

Renders to:

{{#>alert type="error" label="error"}}
This is an error.
{{/alert}}

## Style

If you want to use the default [styles](https://github.com/uwe-app/plugins/blob/main/std/alert/styles/alert.css) apply them in the dependency:

```toml
[dependencies]
"std::alert" = { version = "~1", apply = { styles = [ "**" ] } }
```

{{import "footer"}}

