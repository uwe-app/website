+++
description = "Add external build tools"
+++

{{import "header"}}

The [[docs/tutorials/using-javascript-transpiler|javascript transpiler]] tutorial shows the basic steps for adding an external build tool using a [[docs/in-depth/hooks|hook]].

Here we look in more detail at what happens under the hood when integrating a Javascript transpiler or CSS preprocessor; see the [build tools cookbook][build tools] for source code.

{{!-- {{toc from="h2" tag="ul"}} --}}

* [Quick Start](#quick-start) Use a build tool blueprint
* [General Steps](#general-steps) General steps for adding build tools
  * [Modules](#modules) Dependencies should go in the project root
  * [Sources](#sources) Source file location
  * [Configuration](#configuration) Configuration file location
  * [Site Settings](#site-settings)
    * [Hook](#hook) Add a hook to the site settings
    * [Paths](#paths) Set the script and style paths
      * [Script](#script) Set the main script for the site
      * [Style](#style) Set the main stylesheet for the site
  * [Production](#production) Optimizations for release builds
* [Run](#run) Compile with live reload or for a production release

## Quick Start

To quickly try out a build tool install from a blueprint like this:

```
uwe new webpack-project cookbook::build::webpack
cd webpack-project
npm install
uwe dev --exec
```

## General Steps

To integrate with an external build tool add a [[docs/in-depth/hooks|hook]] which runs whenever a website is compiled; each build tool also runs the hook when build source files are changed and live reload is enabled (`uwe dev --exec`).

### Modules

For [Node][] based tools `package.json` and `node_modules` should be in the project root.

### Sources

Source files should go in the `site` directory so they can trigger a live reload and use an `.ignore` file to exclude sources from the website build.

### Target

Build tools executed via hooks should write build products to the `BUILD_TARGET` environment variable which is automatically exposed to the command when a hook executes and points to the output directory for the current build. The [[docs/in-depth/hooks]] documentation has more information about the environment variables available to build tools.

Do **not write build products** to the `site` directory otherwise you may **create an infinite loop** executing the hook!

### Configuration

Configuration files for build tools should go in the project root outside of the `site` directory unless they should trigger a live reload.

If a configuration file should trigger a hook to be run when files change it can go in the `site` directory; for example the [tailwind][] build tool needs to rebuild the stylesheet when the configuration file changes (see the [tailwind-postcss][tailwind-postcss] example project).

## Site Settings

### Hook

The hook setting in `site.toml` runs the build script:

```toml
\[[hook]]
command = "npm"
args = ["run", "build"]
files = ["src/*.js"]
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

The main stylesheet that would be loaded for all pages also needs to be `dynamic` when using a build tool that compiles stylesheets:

```toml
[style]
src = "/assets/styles/main.css"
dynamic = true
```

## Production

The compiler will automatically set `NODE_ENV=production` for release builds (`uwe build --exec` or `uwe server --exec`) and we recommend using this environment variable to add production optimizations in build tool configuration files (see an example in [postcss.config.js][]).

For some build tools this may not be possible in which case you can set a hook just for the release [[docs/in-depth/build-profiles]]; for example:

```toml
\[[hook]]
command = "npm"
args = ["run", "build-production"]
profiles = ["release"]
files = ["src/*.js"]
watch = true
```

{{import "footer"}}

[build tools]: https://github.com/uwe-app/cookbook/tree/main/build "Build Tools"

[tailwind-postcss]: https://github.com/uwe-app/cookbook/tree/main/build/tailwind-postcss/
[postcss.config.js]: https://github.com/uwe-app/cookbook/tree/main/build/tailwind-postcss/postcss.config.js

[react]: https://reactjs.org/
[babel]: https://babeljs.io/
[Node]: https://nodejs.org/
[swc]: https://swc.rs/
[Esbuild]: https://esbuild.github.io
[Webpack]: https://webpack.js.org/
[tailwind]: https://tailwindcss.com/
[sass]: https://sass-lang.com/
[postcss]: https://postcss.org/
