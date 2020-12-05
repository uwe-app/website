+++
description = "Publishing your website"
+++

{{import "header"}}

Once you are happy with your website to share it with the world it needs to be published; thankfully, publishing your website is trivial as the build contains static files which you can upload anywhere easily.

First create a release build of your project:

```text
uwe --release
```

Then you can upload the files in `build/release` to your preferred hosting provider.

{{#> note label="remember"}}
* If you are using [[docs/pages/redirects]] you will need to configure them on your server.
* The server should be configured to use a [[docs/pages/trailing-slash]] for folders.
{{/note}}

## Providers

You can publish to supported hosting providers using the `publish` command please see [[docs/publish]] for more information.

## Self Hosting

We include a production-grade web server so it is easy to host your site on private infrastructure.

You can use the `server` command to serve a release build; for example:

```text
uwe /path/to/project --release
uwe server /path/to/project/build/release
```

It is strongly recommended that you configure [[docs/other/ssl-certificates]] when self-hosting.

Of course, you can do SSL termination using another web server and configure a reverse proxy to the UWE server which may be easier if you are already using another web server.

