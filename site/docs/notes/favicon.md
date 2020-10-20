+++
description = "How favicons are managed"
+++

{{> crumbtrail}}

# {{title}}

By convention site icons should be placed in `assets/favicon.png`, if you want to change the path you can configure `icon` in the site settings:

```toml
icon = "assets/favicon.ico"
```

When a favicon file exists and the build is not a release a random query string is appended to bypass the browser favicon cache.

When no icon is available a transparent image is used so that the browser network inspector does not show spurious 404 errors for the network requests that browsers automatically generate for favicons.

{{> back}}
