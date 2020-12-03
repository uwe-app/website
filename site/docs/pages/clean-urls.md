+++
title = "Clean URLs"
description = "Search engine friendly URLs"
+++

{{> crumbtrail}}

# {{title}}

Clean URLs are known to be preferred by search engines and are also easier for people to read so we enable them by default.

When clean URLs are enabled the file `about.md` will be written to `about/index.html` instead of `about.html`.

## Avoiding Collisions

The caveat to be aware of when using index rewrites is that there are more chances for paths to collide so it is a little harder to reason about and you should take more care of your source files.

Consider the source file `about.md`:

```text
site
└── about.md
```

When a build is created the resulting file is here:

```text
build/debug
└── about
    └── index.html
```

Which means we can use the `/about/` location when writing links in our website. But if we use a folder and an index file too:

```text
site
├── about
│   └── index.md
└── about.md
```

There is a problem because `about.md` cannot be mapped to the index file which is already declared as `about/index.md`. In this instance the specific index file takes precedence and the file that cannot be treated as a clean location is written to `about.html`:

```text
build/debug
├── about
│   └── index.html
└── about.html
```

If you design your source to avoid these naming conflicts then index rewrites should work just fine!

## Disable for a Page

Sometimes you want clean URLs for the majority of the website but some pages should be rendered directly, you can use the `rewrite-index` option for the page to override for a single page. A good example of this is for [error pages]({{ link "/docs/other/error-page/" }}) which must be written to `404.html`:

```markdown
+++
title = "Error: Page Not Found (404)"
layout = "std::core::error"
rewrite-index = false
+++

# Page Not Found
```

## Disable Index Rewriting

If you would like to disable clean URLs set `rewrite-index` for a build profile in your site settings:

```toml
[build]
rewrite-index = false
```

{{import "footer"}}
