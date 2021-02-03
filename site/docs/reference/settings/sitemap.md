+++
description = "Sitemap generation"
+++

{{import "header"}}

The `[sitemap]` table can be used to change how sitemaps are generated.

The default settings will generate sitemap files for the release [[docs/guides/other/profiles|profile]]; if you want to disable sitemaps completely `profiles` should be disabled:

```toml
[sitemap]
profiles = false
```

* `entries` Number of items in each sitemap file (optional, default `25000`)
* `name` Name of the folder to put generated files inside (optional, default `sitemap`)
* `profiles` Profile filter that triggers sitemap generation (optional, default `release`)

{{import "footer"}}
