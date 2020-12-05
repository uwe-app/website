+++
description = "Generate site maps for web crawlers"
+++

{{import "header"}}

Site maps enable web crawlers to easily find your pages to index. Site maps are enabled for release builds only by default, you can enable for all build profiles like this:

```toml
[sitemap]
profiles = true
```

Or for specific profiles only:

```toml
[sitemap]
profiles = ["debug", "release"]
```

Site maps are automatically chunked on a number of entries so that bots are not served files that are too large, the default value `25000` has been carefully chosen based on recommended guidelines for site map file sizes and tries to ensure files are never too large. You may change the number of `entries` per file:

```toml
[sitemap]
entries = 20000
```

{{#> note label="info"}}
When site maps are enabled a [robots]({{ link "/docs/search-engines/robots/" }}) file is always generated so we can let bots know where to find the site maps.
{{/note}}

{{import "footer"}}
