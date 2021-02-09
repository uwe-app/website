+++
title = "build"
description = "Compile a website"
+++

{{import "header"}}

The `build` command take source files in the `site` folder and compiles them to a build directory such as `build/release`.

It reads `site.toml` from a project directory and uses the [[docs/reference/settings]] for the build. If the `site.toml` file declares a [[docs/reference/settings/workspace]] then all projects in the workspace are compiled.

When no project directory is specified then the current working directory is used to compile a website just run:

```text
uwe build .
```

The compiled site is now in `build/release`.

## Profile

Use the `--profile` option to build into another location:

```text
uwe build . --profile=debug
```

Would write files to `build/debug`; you can set more build options using a [[docs/in-depth/build-profiles|custom profile]].

## Filters

After the project path you can pass specific folders and files to compile; for example to only build files in the `site/docs` directory:

```text
uwe build . site/docs
```

## Usage

```text
{{include ../../../../includes/help/uwe/build.txt~}}
```

{{> back}}
