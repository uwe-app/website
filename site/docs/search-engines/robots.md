+++
description = "Rules for web crawlers"
+++

{{> crumbtrail}}

# {{title}}

Adding a robots.txt file to a site can be useful to instruct bots which pages they are allowed to crawl and index. The compiler will generate a `robots.txt` file if you configure the `[build.robots]` section or if site maps are enabled. To generate a default robots file:

```toml
[build.robots."*"]
allow = ["*"]
```

Or you might want to deny certain pages to a particular bot:

```toml
[build.robots."*"]
allow = ["*"]
[build.robots."googlebot"]
disallow = ["/posts"]
```

To learn more about the rules in `robots.txt` see the [robots.txt specification][].

{{> next-page menu="seo-idx"}}

[robots.txt specification]: https://developers.google.com/search/reference/robots_txt

