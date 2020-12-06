+++
description = "Syndicate your content"
+++

{{import "header"}}

Feeds are integrated with the compiler but are optional so they need to be enabled.

Add the [std::feed][] plugin to your project dependencies to use the standard feed templates:

```toml
[dependencies]
"std::feed" = { version = "~1" }
```

Then you can configure generation of feeds for a `target` folder.

For example a blog normally stores it's articles in a `posts` folder, to configure feeds for the blog posts add this to your `site.toml` settings:

```toml
[feed.posts]
title = "Feed title"
description = "Feed description"
favicon = "/assets/favicon.png"
target = "posts"
includes = ["/posts/**"]
excludes = ["/posts/[0-9]*/", "/posts/"]
```

Now when you compile your project the feeds will automatically be generated using the pages in the `posts` folder:

* JSON (`posts/feed.json`)
* RSS (`posts/rss.xml`)
* Atom (`posts/atom.xml`)

We also add `<link rel="alternate">` elements to help readers find your feeds <3.

{{import "footer"}}

[std::feed]: https://github.com/uwe-app/plugins/tree/master/std/feed
