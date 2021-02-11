+++
description = "Support multiple languages"
+++

{{import "header"}}

The `[fluent]` table is optional but allows modifying the translation parameters if necessary; we recommend using the default values.

* `fallback` Identifier of the fallback language (optional)
* `shared` The name of the file used for shared messages (optional, default `core.ftl`)

{{#>alert}}
The default fallback language is the primary language for the project defined by the top-level `lang` setting.
{{/alert}}

{{#>alert}}
The shared file must exist in the `locales` directory, ie: `site/locales/core.ftl`.
{{/alert}}

{{import "footer"}}
