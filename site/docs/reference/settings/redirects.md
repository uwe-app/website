+++
description = "Create location redirects"
+++

{{import "header"}}

The `[redirects]` table is used to redirect a location to a destination; see [[docs/guides/pages/redirects]] for more information.

We recommend using a leading and trailing slash for the source location as shown below:

```toml
[redirects]
"/posts/" = "/posts/1/"
```

The source location should be a relative path but the destination may be an absolute URL:

```toml
[redirects]
"/posts/" = "https://blog.example.com/posts/"
```

{{import "footer"}}
