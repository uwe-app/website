+++
description = "Output with index pages"
+++

{{> crumbtrail}}

Rewriting to index files lets us have a shallow source tree whilst easily supporting clean URLs. To enable index rewriting configure the settings:

```toml
[build]
rewrite-index = true
```

Now the file `about.md` will be written to `about/index.html` instead of `about.html`.

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

Sometimes you want index rewrites for the majority of the website but some pages should be rendered directly, you can use the `rewrite-index` option for the page to override for a single page. A good example of this is for error pages, for example:

```toml
["404.html"]
rewrite-index = false
```

{{> back}}
