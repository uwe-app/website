+++
description = "Create and build a website"
+++

{{import "header"}}

This tutorial walks through the steps for creating, editing and building a website; you will need to have already [[docs/installation/quick-install|installed the platform tools]].

{{#> note label="Learn how to"}}
{{toc from="h2" tag="ul"}}
{{/note}}

## Create a project

To start we need to create a project, let's call it `basic-website`:

```
uwe new basic-website
```

{{#> note}}
This command uses the default blueprint which generates a website with one page and basic styles.
{{/note}}

## Run the development server

Now let's start a development server which will watch the source files for changes and refresh the browser when changes are detected:

```
cd basic-website
uwe dev
```

Which will build the site using the `debug` build profile and launch it in your default browser.

{{#> note}}
Open the `site/index.md` file in a text editor and make some changes to see the browser tab refresh and show the changes.
{{/note}}

To stop the development server press the `Ctrl+c` key combination in your terminal window.

## Build a release

To create a build using the `release` profile run the `build` command:

```
uwe build
```

Which will put the generated website files in the `build/release` folder.

## Preview a release

To generate a release build and view the website in a browser use the `server` command:

```
uwe server --open
```

{{import "footer"}}
