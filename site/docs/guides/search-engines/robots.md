+++
description = "Rules for web crawlers"
+++

{{import "header"}}

Adding a robots.txt file to a site can be useful to instruct bots which pages they are allowed to crawl and index. The compiler will generate a `robots.txt` file automatically for the release profile or if site maps are enabled.

You can add your own rules to the `[robots]` section and they will be used:

```toml
[robots."*"]
allow = ["*"]
```

Or you might want to deny certain pages to a particular bot:

```toml
[robots."*"]
allow = ["*"]
[build.robots."googlebot"]
disallow = ["/posts"]
```

To learn more about the rules in `robots.txt` see the [robots.txt specification][].

{{import "footer"}}

[robots.txt specification]: https://developers.google.com/search/reference/robots_txt

