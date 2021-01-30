+++
description = "Complete guide to the site settings"
+++

{{import "header"}}

This section provides the definitive reference to all the settings in `site.toml`; see [[docs/getting-started/site-settings]] for example usage.

Settings are defined as [TOML][] which uses the term *table* also called an *object*, *map* or *dictionary*.

Minimum required settings are shown below:

```toml
lang = "en"
host = "example.com"
```

{{#> note}}
If you do not have a `host` name yet use `localhost` as a placeholder value.
{{/note}}

These are the settings that can be defined at the top-level of `site.toml`:

* `lang` The default language (required)
* `host` Host for the website (required)
* `version` Version for the project (optional [semver][])
* `charset` Character encoding for pages (optional, default `utf-8`)
* `icon` Path to a favicon for the site (optional, default `favicon.ico`)
* `manifest` Path to a PWA manifest (optional, default `app.webmanifest`)
* `local-domain` Override an inferred local domain name (optional)

For more settings see the relevant section:

{{> listing with-description=true}}

{{> back}}

[semver]: https://semver.org/
[TOML]: https://toml.io/
