+++
description = "Publishing your website"
+++

{{import "header"}}

Once you are happy with your website to share it with the world it needs to be published; thankfully, publishing your website is trivial as the build contains static files which you can upload anywhere easily.

First create a release build of your project:

```text
uwe build .
```

Then you can upload the files in `build/release` to your preferred hosting provider.

{{#> note label="remember"}}
* If you are using [[docs/pages/redirects]] you will need to configure them on your server.
* The server should be configured to use a [[docs/pages/trailing-slash]] for folders.
{{/note}}

## Providers

You can publish to supported hosting providers using the `publish` command please see [[docs/publish]] for more information.

{{import "footer"}}
