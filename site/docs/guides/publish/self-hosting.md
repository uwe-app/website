+++
description = "Use your own infrastructure"
+++

{{import "header"}}

A production-grade web server is bundled so it is easy to host your site on private infrastructure.

You can use the `server` command to compile and serve a release build; for example:

```text
uwe server .
```

If you know that your release build is up to date you can use the `--skip-build` option:

```text
uwe build .
uwe server . --skip-build
```

It is strongly recommended that you configure [[docs/in-depth/security/ssl-certificates]] when self-hosting.

Of course, you can do SSL termination using another web server and configure a reverse proxy to the UWE server which may be easier if you are already using another web server.

