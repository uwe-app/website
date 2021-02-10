+++
description = "Use a hook to transpile Javascript"
+++

{{import "header"}}

The frontend ecosystem is diverse and there are a myriad of tools available for compiling to Javascript or CSS so we provide *hooks* that let you choose which tools you want to use.

This tutorial walks through an example integration with the [esbuild][] transpiler however this technique can be used to run any frontend tool. You should have already [[docs/installation/quick-install|installed the platform tools]].

If you want to dive straight in to the source code see the [build tools][] cookbook for various working examples using the technique described here.

{{#> note label="Learn how to"}}
{{toc from="h2" tag="ul"}}
{{/note}}

## Create a project

To begin we need a project, let's call it `esbuild-hook`:

```
uwe new esbuild-hook
```

## Create a package.json

Next we add the `esbuild-hook/package.json` file to keep track of the project dependencies and to define the `build` script:

```json
{
  "name": "@uwe/esbuild-hook",
  "version": "1.0.0",
  "private": true,
  "description": "Tutorial for an esbuild hook",
  "license": "MIT",
  "scripts": {
    "build": "esbuild ${BUILD_SOURCE}/src/main.js --bundle --outfile=${BUILD_TARGET}/assets/scripts/main.js"
  }
}
```

{{#> note}}
Notice the `build` script uses the environment variables `BUILD_SOURCE` and `BUILD_TARGET`; these will be set when the hook is executed.
{{/note}}

## Install esbuild

Now let's add [esbuild][] to our project:

```
cd esbuild-hook
npm install esbuild --save-dev
```

Or if you prefer [yarn][] run `yarn add esbuild --dev`.

## Define the hook

We need to add a hook to `site.toml` so that it knows which command to run before compiling the website. Edit the `esbuild-hook/site.toml` file to include this snippet:

```toml
[script]
src = "/assets/scripts/main.js"
dynamic = true

\[[hook]]
command = "npm"
args = ["run", "build"]
files = ["src/*.js"]
watch = true
```

When you compile the site the `build` script defined earlier in `package.json` will be called beforehand and the `/assets/scripts/main.js` file will be loaded by all pages.

{{#> note}}
The `files` and `watch` settings ensure that the hook runs when live reload is enabled using `uwe dev`.
{{/note}}

## Add main script

Next create a main script which will be compiled by [esbuild][] into the `assets/scripts` folder. Create the `esbuild-hook/site/src/main.js` file:

```js
document.getElementById("result").innerHTML = "esbuild ✓"
```

## Edit the index page

So that we can see the new script in action let's replace the content of the `esbuild-hook/site/index.md` page with this markup:

```html
<p id="result"></p>
```

## Build the website

We are all set now, to view the result run:

```
uwe dev --exec
```

Which will run the [esbuild][] hook, compile the website and launch a browser showing the result. You should see on the page:

```
esbuild ✓
```

Which was written by the `main.js` script we created earlier!

{{#> note}}
Remember when using hooks to pass the `--exec` option so they are executed.
{{/note}}

If you edit the `site/src/main.js` file the hook will re-compile the javascript and the live reload server will refresh the browser!

{{import "footer"}}

[build tools]: https://github.com/uwe-app/cookbook/tree/main/build "Build Tools"
[esbuild]: https://esbuild.github.io/
[yarn]: https://yarnpkg.com/
