+++
description = "Content security policy"
+++

{{import "header"}}

To mitigate against cross-site scripting it is recommended websites use a [content security policy][csp]. To add a policy to all pages modify your [[docs/guides/getting-started/site-settings]]:

```toml
[page.http-equiv]
content-security-policy = "default-src 'self'; style-src 'self' 'unsafe-inline';"
```

If you need to change the [content security policy][csp] for certain pages you can override the default setting in the page [[docs/guides/getting-started/front-matter]]:

```toml
[http-equiv]
content-security-policy = "..."
```

{{import "footer"}}

[csp]: https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP
