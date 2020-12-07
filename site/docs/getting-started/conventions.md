+++
description = "Project conventions"
+++

{{import "header"}}

A conventional project structure helps everyone get up and running quickly and makes sharing projects easier. These conventions can be modified via [[docs/reference/settings]] if you need to however this is not recommended.

## Assets

Assets give us a hint that certain files are global assets for the site; all you need to do is put the files in an `assets` folder; these files are logos, stylesheets, fonts, scripts, icons and any other files that you use across all pages.

Using the `assets` folder convention is optional but it will help us do the right thing when live reload is enabled.

## Includes

Many websites include other files (such as code samples); put these files in the `includes` folder and they will automatically be ignored.

## Layouts

Layouts provide the structure for your pages; they should be placed in the `layouts` folder. If you create a `layouts/main.hbs` file it becomes the default layout for all pages.

## Partials

Partials are templates or snippets that you can include anywhere in your pages; they should be placed in the `partials` folder.

## Script

If the file `assets/scripts/main.js` exists it is applied to all pages automatically, see [[docs/getting-started/scripts]] for more information on using scripts.

## Style

If the file `assets/styles/main.css` exists it is applied to all pages automatically, see [[docs/getting-started/styles]] for more information on applying style sheets.

{{import "footer"}}
