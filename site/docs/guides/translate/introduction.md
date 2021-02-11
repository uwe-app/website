+++
description = "Translation concepts"
+++

{{import "header"}}

Our system was designed with multi-lingual support from the start but we understand that not everyone needs multiple languages or that translations may need to be integrated later.

Translations may be either *messages* or entire *pages*; which approach you choose depends upon the type of content you want to translate and the design of your project. For messages [project fluent][] is used as it is an excellent modern design for managing natural language translations.


We imagine that a good multi-lingual project would take advantage of both styles of translation. Messages are best suited to *interface* text that makes up part of the *layout* of your project whilst using translated *pages* is best suited to long-form content.

## Fallback

Every project must define a language in the site settings:

```toml
lang = "fr"
```

This is called the *primary* or *fallback* language and is the language used when no translation is available.

## Locales

Message translations are `.ftl` files in the `site/locales` directory, here is an example layout showing files for several languages:

```text
site/locales
├── core.ftl
├── en
│   └── main.ftl
├── es
│   └── main.ftl
└── fr
    └── main.ftl
```

{{#>alert label="info"}}
The `core.ftl` file can be used to share messages across all translations; it is a required file and must exist even if you have no shared messages.
{{/alert}}

## Redirect

When multiple languages are defined in the locales directory then the project is automatically treated as a multi-lingual project in which case the build will contain multiple language directories:

```text
build/debug
├── en
├── es
└── fr
```

Which means that multi-lingual projects need to add a redirect in the project site settings for the default language:

```toml
[redirect]
"/" = "/fr/"
```

{{import "footer"}}

[project fluent]: https://www.projectfluent.org/
