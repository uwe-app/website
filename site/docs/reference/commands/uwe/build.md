+++
title = "build"
description = "Compile a website"
+++

{{import "header"}}

The `build` command take source files in the `site` folder and compiles them to a build directory; it is the default command.

It reads `site.toml` from a project directory and uses the [[docs/reference/settings]] for the build. If the `site.toml` file declares a [[docs/reference/settings/workspace]] then all projects in the workspace are compiled.

When no project directory is specified then the current working directory is used to compile a website just run:

```text
uwe
```

The compiled site is now in `build/debug`.

## Live Reload

To live reload files in the browser as you work pass the `--live` option:

```text
uwe --live
```

If you need to override the host or port used for live reload set the `--host` and `--port` options.

## Release

To make a release build pass the `--release` option:

```text
uwe --release
```

In this case the site is now in `build/release`. Use the `--profile` option to compile into a specific build directory:

```text
uwe --release --profile=v3.1.0
```

You can set more compiler options using a [[docs/other/profiles|profile]].

## Filters

After the project path you can pass specific folders and files to compile; for example to only build files in the `site/docs` directory:

```text
uwe . site/docs
```

## Usage

```text
{{include ../../../../includes/help/uwe/build.txt}}
```

{{> back}}
