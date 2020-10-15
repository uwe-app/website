+++
description = "Support multiple languages"
+++

{{> crumbtrail}}

To configure your website for multi-lingual support add a `fluent` section to the settings in `site.toml`.

```toml
[fluent]
fallback = "en"
```

Which will read your [fluent](https://www.projectfluent.org/) language files from `site/locales` and configure the build for multi-lingual output.

To learn how to get your messages into your page templates see [fluent messages]({{ link "/docs/helpers/fluent/" }}).

Your locales directory should have a `main.ftl` file in each language directory. An example layout:

```
site/locales
├── en
│   └── main.ftl
└── id
    └── main.ftl
```

If you want a bundle to be shared across all languages use `shared`:

```toml
[fluent]
fallback = "en"
shared = "core.ftl"
```

The shared resource bundle is resolved relative to the locales directory so the example layout would now look like:

```
site/locales
├── core.ftl
├── en
│   └── main.ftl
└── id
    └── main.ftl
```

### Locales

If you want to use a different folder name use the `locales` option:

```toml
[fluent]
fallback = "en"
locales = "i18n"
```

### Redirect

Once you have configured multi-lingual support the target build directory now contains a folder for each locale. To redirect to a specific locale by default use a [redirect]({{ link "/docs/pages/redirects/" }}):

```toml
[redirect]
"/" = "/en/"
```

Which will dynamically generate a root `index.html` page that redirects to your default language.

{{> back}}
