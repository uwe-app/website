+++
description = "Using plugin partials and layouts"
+++

{{import "header"}}

After adding a plugin dependency it's partials and layouts are automatically available to your project but there are some differences in how namespaces are handled.

## Partials

Partials are added by name and are not namespaced; so a plugin that includes a `note.hbs` file in it's `partials` directory can be referenced using the notation `\{{> note}}`; however projects can override them by adding a `note.hbs` file to the project `site/partials` directory.

> The rule is that project partials always take precedence over plugin partials.

## Layouts

Layouts are namespaced using the plugin name as a prefix for the fully qualified layout name, so the default layout ([main.hbs][]) has a fully qualified name of `std::core::main`. This means that if you are using a layout from a plugin and you want to use it in a page you must use the fully qualified name.

For example, the page front matter would look like this:

```markdown
+++
layout = "std::core::main"
+++
```

Replace `std::core` with the plugin name and `main` with the name of the layout.

{{#> note}}
The `std::core::main` layout is the default layout so you should never need to explicitly apply it to a page.
{{/note}}

{{import "footer"}}

[semver]: https://semver.org/
[main.hbs]: https://github.com/uwe-app/plugins/blob/main/std/core/layouts/main.hbs
