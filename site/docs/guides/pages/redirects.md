+++
description = "Redirect to new locations"
+++

{{import "header"}}

Redirects are useful if you have moved a page and want the old page to redirect to the new location; to define a redirect map the old path to the new path in your site settings:

```toml
[redirects]
"/articles/old-name/" = "/articles/new-name/"
```

The platform tools will serve the redirects you define but you may need to configure your hosting to handle them; the complete list of redirects is always written to the `redirects.json` file in the build directory.

{{#>alert}}
The final list of redirects also includes any [[docs/guides/getting-started/front-matter#permalinks|permalinks]] that have been set.
{{/alert}}

For a simpler (but less efficient) solution enable creation of static pages to perform the redirects; add the `write-redirect-files` setting to a build profile and HTML pages will be created for each redirect:

```toml
[build]
write-redirect-files = true
```

When redirect pages are written if the source path ends with a slash (`/`) then it will be treated as a directory and the redirect file will be written to `index.html` within the location.

{{import "footer"}}
