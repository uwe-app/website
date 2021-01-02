+++
description = "Compile a project to static pages"
+++

{{import "header"}}

Building a project will use the source files in `site` and compile them to a build folder such as `build/release`.

Commands take a path to a project otherwise the current directory is used as the target project; the project should contain site settings in a `site.toml` file. For clarity, in these examples we use a period `.` to explicitly use the current directory but it is not required.

## Live Reload

The typical workflow is to run a development server with live reload enabled:

```text
uwe dev .
```

Then you can edit the pages using your preferred text editor and observe the changes in the browser.

## Release

To compile a release use the `build` command:

```text
uwe build .
```

Your website files are now in `build/release`.

## Server

To preview a release build in the browser run:

```text
uwe server . --open
```

Or omit the `--open` flag to just run the server:

```text
uwe server .
```

{{import "footer"}}
