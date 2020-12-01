+++
description = "Translation concepts and terminology"
+++

{{> crumbtrail}}

# {{title}}

Our system was designed with multi-lingual support from the start but we understand that not everyone needs multiple languages or that translations may need to be integrated later.

We decided to use [project fluent][] as we think it is the future for creating natural language translations and aim to provide excellent support for multiple languages via a seamless process for adding translations.

Our design caters for translating either *messages* or entire *pages*; which approach you choose depends upon the type of content you want to translate and the design of your project.

We imagine that a good multi-lingual project would take advantage of both styles of translation. Messages are best suited to *interface* text that makes up part of the *chrome* of your project whilst using translated *pages* is best suited to long-form content.

## Fallback

Every project must define a language in the site settings:

```toml
lang = "en"
```

This is called the *primary* or *fallback* language and is the language used when no translation is available.

## Locales

Message translations are `.ftl` files in the `site/locales` directory, here is an example showing files for several languages:

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

{{#> note}}
The `core.ftl` file can be used to share messages across all translations.
{{/note}}

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
"/" = "/en/"
```

{{> next-page menu="translate-idx"}}

[project fluent]: https://www.projectfluent.org/
