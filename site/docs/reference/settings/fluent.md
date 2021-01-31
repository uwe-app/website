+++
description = "Support multiple languages"
+++

{{> crumbtrail}}

The `[fluent]` table is optional but allows modifying the translation parameters if necessary; we recommend using the default values.

* `fallback` Identifier of the fallback language (optional)
* `shared` The name of the file used for shared messages (optional, default `core.ftl`)

{{#> note}}
The default fallback language is the primary language for the project defined by the `lang` setting.
{{/note}}

{{#> note}}
The shared file must exist in the `locales` directory.
{{/note}}

{{import "footer"}}
