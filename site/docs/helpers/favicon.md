+++
description = "Link to a site favicon"
+++

{{> crumbtrail}}

# {{title}}

The `favicon` helper links to the `assets/favicon.png` file when it exists otherwise it embeds a transparent PNG; it should be used in the document head.

```handlebars
\{{favicon}}
```

Note that when a favicon file exists and the build is not a release a random query string is appended to bypass the browser favicon cache.

We use a transparent image by design so that the browser network inspector does not show spurious 404 errors for the network requests that browsers automatically generate for favicons.

{{> back}}
