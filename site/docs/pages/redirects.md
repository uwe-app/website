+++
description = "Redirect to new locations"
+++

{{> crumbtrail}}

# {{title}}

Redirects are useful if you have moved a page and want the old page to redirect to the new location. To define a redirect just map the old path to the new path in your site settings:

```toml
[redirect]
"/articles/old-name/" = "/articles/new-name/"
```

The development server will handle the redirects you declare and we recommend you configure your deployment server to handle them.

If that is not possible you can write out static pages to perform the redirects; to enable static redirects you need to add the `write-redirects` setting to a profile and trigger the profile from a tag, for example add a profile to your site settings:

```toml
[profile.release]
write-redirects = true
```

Then trigger the profile with the command:

```text
uwe --release
```

When redirect pages are written if the source path ends with a slash (`/`) then it will be treated as a directory and the redirect file will be written to `index.html` within the location.

See [profiles]({{ link "/docs/profiles/" }}) for more information.

{{> next-page menu="pages-idx"}}
