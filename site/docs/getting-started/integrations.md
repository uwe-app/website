+++
description = "Integrate with external build tools"
+++

{{import "header"}}

To integrate a Javscript build tool or CSS preprocessor add a [[docs/other/hooks|hook]] to your project. This page describes the steps for creating an integration and you can find examples for several popular tools in the [integrations repository][].

For the best performance compiling Javascript/Typescript we recommend using the [swc][swc-example] integration.

* [Integration Steps](#integration-steps) General steps for integration.
  * [Modules](#modules) Dependencies should go in the project root.
  * [Sources](#sources) Source file location.
  * [Configuration](#configuration) Configuration file location.
  * [Site Settings](#site-settings)
    * [Hook](#hook) Add a hook to the site settings.
    * [Paths](#paths) Set the script and style paths.
      * [Script](#script) Set the main script for the site.
      * [Style](#style) Set the main stylesheet for the site.
  * [Production](#production) Optimizations for release builds.
* [Run](#run) Compile integrations with live reload or for a production release.
* [Examples](#examples) List of example integrations.

## Integration Steps

To integrate with an external build tool add a [[docs/other/hooks|hook]] which runs whenever a website is compiled; each integration also runs the hook when build source files are changed and live reload is enabled (`uwe --live`).

### Modules

For [Node][] based tools `package.json` and `node_modules` should be in the project root.

### Sources

Source files should go in the `site` directory so they can trigger a live reload and use an `.ignore` file to exclude sources from the website build.

### Target

Build tools executed via hooks should write build products to the `BUILD_TARGET` environment variable which is automatically exposed to the command when a hook executes and points to the output directory for the current build. The [[docs/other/hooks]] documentation has more information about the environment variables available to build tools.

Do **not write build products** to the `site` directory otherwise you may **create an infinite loop** executing the hook! See the [notes](#notes) for more detail.

### Configuration

Configuration files for build tools should go in the project root outside of the `site` directory unless they should trigger a live reload.

If a configuration file should trigger a hook to be run when files change it can go in the `site` directory; for example the [tailwind][] integration needs to rebuild the stylesheet when the configuration file changes (see the [tailwind-postcss][tailwind-postcss-example] integration).

## Site Settings

### Hook

The hook setting in `site.toml` runs the build script:

```toml
\[[hooks.run]]
path = "npm"
args = ["run", "build"]
files = ["src/main.js"]
watch = true
```

The list of `files` is important to trigger the hook again when live reload is enabled; paths in the `files` list are resolved relative to the `site` directory.

### Paths

The compiler cannot automatically detect the main script and styles for the website as they are generated dynamically and put directly into the build target so we need to add these settings to `site.toml` so that the main script and styles are embedded on every page.

Note that the main script and style for the website should configure the `dynamic` flag to indicate that the file is generated dynamically and bypass the compiler check that the file exists.

#### Script

```toml
[script]
src = "/assets/scripts/main.js"
dynamic = true
```

Script settings accept all the attributes of the `<script>` element so if you are compiling to ES modules you should specify the `type`:

```toml
src = "/assets/scripts/main.js"
type = "module"
dynamic = true
```

#### Style

The main stylesheet that would be loaded for all pages also needs to be `dynamic` when using an integration that compiles stylesheets:

```toml
[style]
src = "/assets/styles/main.css"
dynamic = true
```

## Production

The compiler will automatically set `NODE_ENV=production` for release builds (`uwe --release` or `uwe server`) and we recommend using this environment variable to add production optimizations in build tool configuration files (see an example in [postcss.config.js][]).

For some build tools this may not be possible in which case you can set a hook just for the release [[docs/other/profiles]]; for example:

```toml
\[[hooks.run]]
path = "npm"
args = ["run", "build-production"]
profiles = ["release"]
files = ["src/main.js"]
watch = true
```

## Examples

### Javscript / Typescript

* [Swc][swc-example] Compile scripts using [swc][].
* [Esbuild][esbuild-example] Compile scripts using [esbuild][].
* [Babel][babel-example] Compile scripts using [babel][].
* [Webpack][webpack-example] Compile scripts using [webpack][].

### Stylesheets

* [Sass][sass-example]: Compile styles using [sass][].
* [Tailwind w/ PostCSS][tailwind-postcss-example]: Compile styles using the [tailwind][] framework.

## Test

To run a smoke test of all the integrations:

```
make test
```

## Notes

The compiler uses certain conventions for the live reload functionality. One of these conventions is that all files in the `assets` folder are considered part of the chrome for the entire website so when a file changes in the `assets` folder the entire site is re-compiled including executing any hooks. This means that if a hook command writes to `site/assets` an infinite loop is created! For this reason we advise that build tool integrations always write directly to `BUILD_TARGET`.

{{import "footer"}}

[integrations repository]: https://github.com/uwe-app/integrations

[swc-example]: https://github.com/uwe-app/integrations/tree/main/swc
[esbuild-example]: https://github.com/uwe-app/integrations/tree/main/esbuild
[babel-example]: https://github.com/uwe-app/integrations/tree/main/babel
[webpack-example]: https://github.com/uwe-app/integrations/tree/main/webpack

[sass-example]: https://github.com/uwe-app/integrations/tree/main/sass
[tailwind-postcss-example]: https://github.com/uwe-app/integrations/tree/main/tailwind-postcss

[postcss.config.js]: https://github.com/uwe-app/integrations/tree/main/tailwind-postcss/postcss.config.js

[react]: https://reactjs.org/
[babel]: https://babeljs.io/
[Node]: https://nodejs.org/
[swc]: https://swc.rs/
[Esbuild]: https://esbuild.github.io
[Webpack]: https://webpack.js.org/
[tailwind]: https://tailwindcss.com/
[sass]: https://sass-lang.com/
