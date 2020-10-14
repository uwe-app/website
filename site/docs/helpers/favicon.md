+++
description = "Link to a site favicon"
+++

{{> crumbtrail}}

## {{title}}

The `favicon` helper links to the `assets/favicon.png` file when it exists otherwise it embeds a transparent PNG; it should be used in the document head.

```handlebars
\{{favicon}}
```

Note that when a favicon file exists and the build is not a release a random query string is appended to bypass the browser favicon cache.

We use a transparent image by design so that the browser network inspector does not show spurious 404 errors for the network requests that browsers automatically generate for favicons.

If you want to use a different path you can pass the `href` parameter:

```handlebars
\{{favicon href="/assets/favicon.ico"}}
```

By default the path is relative but if you need it to be absolute (for example when rendering in an error page) pass the `abs` parameter:

```handlebars
\{{favicon abs=true}}
```

{{> back}}
