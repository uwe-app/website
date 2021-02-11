+++
description = "Show tips, warnings and other alerts"
+++

{{import "header"}}

A common pattern is to show alerts such as tips, warnings or info messages. The [std::alert](https://github.com/uwe-app/plugins/tree/main/std/alert) plugin provides an [alert block partial](https://github.com/uwe-app/plugins/blob/main/std/alert/partials/alert.hbs) which makes it easy to add alerts to your pages.

{{> source-code repo="cookbook" path="content/alerts" title="Alerts"}}

You should add the dependency to your site settings to use it:

```toml
[dependencies]
"std::alert" = "^1"
```

Afterwards, you can use the alert partial like this:

```handlebars
{{{{~raw}}}}
{{#>alert}}
This is an alert with *seamless* Markdown handling.
{{/alert}}
{{{{~/raw}}}}
```

Renders to:

{{#>alert}}
This is an alert with *seamless* Markdown handling.
{{/alert}}

When a `type` is passed to the partial it is appended to the `class` for the element:

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

Add a `label` to render a title:

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

If you want to use the default [styles](https://github.com/uwe-app/plugins/blob/main/std/alert/styles/alert.css) apply them in the dependency:

```toml
[dependencies]
"std::alert" = { version = "^1", apply = { styles = [ "**" ] } }
```

{{import "footer"}}

