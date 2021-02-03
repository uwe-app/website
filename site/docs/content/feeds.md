+++
description = "Syndicate your content"
+++

{{import "header"}}

Feeds are integrated with the compiler but are optional so they need to be enabled.

Add the [std::feed][] plugin to your project dependencies and configure generation of feeds to a `target` folder.

```toml
[dependencies."std::feed"]
version = "~2"
```

Here is an example from the [blog blueprint settings][blog-settings] which stores it's articles in a posts folder, to generate feeds for the blog posts add this to your [[docs/guides/getting-started/site-settings]]:

```toml
[feed.posts]
title = "Feed Title"
description = "Short feed description"
favicon = "/favicon.ico"
target = "posts"
includes = ["/posts/**"]
excludes = ["/posts/[0-9]*/", "/posts/"]

[feed.posts.alternate]
includes = ["/", "/posts/**/*.html"]
```

Now when you compile your project the feeds will automatically be generated using the pages in the `posts` folder generating the feeds for each type of feed.

* JSON `posts/feed.json`
* RSS `posts/rss.xml`
* Atom `posts/atom.xml`

## Alternate

The settings for `alternate` are used to indicate which *output files* should link to the generated feeds:

```toml
[feed.posts.alternate]
includes = ["/", "/posts/**/*.html"]
```

Files that match the glob patterns include `<link rel="alternate">` elements for each feed to help readers find your feeds <3.

{{import "footer"}}

[std::feed]: https://github.com/uwe-app/plugins/tree/main/std/feed
[blog-settings]: https://github.com/uwe-app/blueprints/blob/main/blog/site.toml
