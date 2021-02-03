+++
description = "Settings for the project"
+++

{{import "header"}}

The settings for a project go in `site.toml`;  this page describes the required settings for a project. See the [[docs/reference/settings|settings reference]] for a complete reference to all available settings.

The minimum required settings are:

```toml
lang = "en"
host = "example.com"
version = "1.0.0"
```

The `lang` field sets the default language and the `host` field is the domain name where you intend to publish the website. If you do not know the domain name yet use `localhost` as the value.

An optional `version` field may specify a [semver][] for the website which will be added as a `meta` element to each page so you can easily see which version of the website is the published version.

## Page Data

You can set the data inherited by all pages which is useful to set default meta data:

```toml
[page]
description = "Brief website description"
keywords = "Website, Project, Keywords"
authors = [{ name = "Author Name", url = "https://example.com" }]
```

See the [[docs/guides/pages]] documentation for detailed information on the available fields.

{{import "footer"}}

[semver]: https://semver.org/
