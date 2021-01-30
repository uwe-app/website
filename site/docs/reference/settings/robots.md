+++
description = "Set robots rules"
+++

{{import "header"}}

The `[robots]` table is used to write a `robots.txt` file for the website.

* `profiles` Profiles filter that determines when a robots file is generated (optional, default `release`)

The robots file generation is determined by the `profiles` filter with the exception that if sitemaps are being generated then `profiles` will be ignored and the robots file will be generated. This is because the robots file is used to instruct bots where to find the sitemap files so it must exist if sitemap generation is enabled.

Rules can be added to the `[robots]` table by specifying the user agent followed by `allow` and `disallow` patterns, for example:

```toml
[robots."*"]
allow = ["*"]

[robots."googlebot"]
allow = ["/"]
disallow = ["/images"]
```

{{import "footer"}}
