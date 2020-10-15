+++
description = "Project conventions"
+++

{{> crumbtrail}}

# {{title}}

A conventional project structure helps everyone get up and running quickly and makes sharing projects easier. These conventions can be modified via [settings]({{ link "/docs/settings/" }}) if you need to however this is not recommended.

## Assets

Assets give us a hint that certain files are global assets for the site; all you need to do is put the files in an `assets` folder.

These files are logos, stylesheets, fonts, scripts, icons and any other files that you use across all pages.

Using the `assets` folder convention is optional but it will help us do the right thing when live reload is enabled.

## Includes

Many websites include other files (such as code samples); put these files in the `includes` folder and they will automatically be ignored.

## Partials

Partials are templates or snippets that you can include anywhere in your pages; they should be placed in the `partials` folder.

{{> next-page menu="getting-started-idx"}}
