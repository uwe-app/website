+++
description = "Feed generation"
+++

{{import "header"}}

The `[feed]` table is used to define assets for feed generation; see [[docs/content/feeds]] for more information.

Feed tables require an identifier so use the `[feed.posts]` notation which creates feed settings using a `posts` identifier.

* `target` Path relative to `site` to write generated feeds (required)
* `includes` List of glob patterns of pages to include in the feed (required)
* `excludes` List of glob patterns of pages to exclude from the feed (optional)
* `title` Title for the feed (optional)
* `description` Description of the feed (optional)
* `favicon` Path to a favicon for the feed (optional)
* `limit` Maximum number of items in a feed (optional, default `100`)
* `plugin` Plugin name containing the feed templates (optional, default `std::feed`)
* `alternate` List of glob patterns for build files that should link to the generated feeds (optional)

When both `includes` and `excludes` glob patterns are given the `excludes` take precedence.

{{import "footer"}}
