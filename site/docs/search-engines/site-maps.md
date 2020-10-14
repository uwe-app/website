+++
description = "Generate site maps for web crawlers"
+++

{{> crumbtrail}}

## {{title}}

Site maps enable web crawlers to easily find your pages to index. To enable site map generation add this to your site settings:

```toml
[build]
sitemap = {}
```

When site maps are enabled a [robots]({{ link "/docs/search-engines/robots/" }}) file is always generated so we can let bots know where to find the site maps.

{{> next-page menu="seo-idx"}}


