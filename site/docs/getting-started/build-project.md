+++
description = "Compile a project to static pages"
+++

{{import "header"}}

Building a project will use the source files in `site` and compile them to a build folder such as `build/debug`.

Use the `uwe` tool to compile your website; run `uwe` in the project working directory:

```text
cd /path/to/project
uwe
```

Or pass a project folder path:

```text
uwe /path/to/project
```

## Live Reload

The typical workflow is to run with live reload enabled:

```text
uwe --live
```

Then edit your pages using your preferred text editor and observe the changes in your browser.

## Release

To compile a release build run with the `--release` option:

```text
uwe --release
```

Your website files are now in `build/release`.

## Server

Use the `server` command to compile a release and serve the static files:

```text
uwe server
```

To launch it in the browser use the `--open` option:

```text
uwe server --open
```

{{import "footer"}}
