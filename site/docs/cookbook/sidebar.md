+++
title = "Sidebar Menu"
description = "Add navigation to a sidebar"
+++

{{import "header"}}

Using a *sidebar* as a navigation menu is a common use case so we decided to support it out of the box.

{{> table-of-contents}}

We designed a plugin that uses a neat hidden checkbox trick so the menu can be toggled even when a visitor has Javascript disabled.

{{#>alert type="warn"}}
Unfortunately RTL layouts are not currently supported; if this is an issue for you please let us know in the [community issues][].
{{/alert}}

## Plugin

The first step to adding a sidebar to your project is to enable the sidebar plugin:

```toml
[dependencies]
"std::sidebar" = { version = "~1", apply = { styles = [ "**" ] } }
```

## Aside

Then create the `site/partials/aside.hbs` file and render the `sidebar` partial from the plugin:

```handlebars
\{{> sidebar}}
```

{{#>alert label="info"}}
The aside partial is a placeholder that is called by the default main layout in [std::core][].
{{/alert}}

## Content

Add a `site/partials/sidebar-content.hbs` file to render the content for the sidebar:

```handlebars
\{{> listing}}
```

You can customize this later for now let's list the files in the current directory using the [std::listing][] plugin.

## Toggle

To create an element that toggles the menu call the `sidebar-label` partial:

```handlebars
{{{{raw~}}}}
{{#> sidebar-label}}Menu{{/sidebar-label}}
{{{{~/raw}}}}
```

A toggle element can also be used to add a close button inside the sidebar content, for example update `sidebar-content.hbs` to:

```handlebars
{{{{raw~}}}}
<nav>{{#> sidebar-label}}Close{{/sidebar-label}}</nav>
{{> listing}}
{{{{~/raw}}}}
```

## Styles

Now we need to set some basic styles for the page layout, update your `site/assets/styles/main.css` to set the required variables:

```css
:root {
  --sidebar-width: 320px;
  --sidebar-offset: -320px;
}
```

Then add some styles for the main body layout as the sidebar plugin expects a flexbox layout:

```css
/* Sidebar plugin requires flexbox */
body {
  display: flex;
  overflow: hidden;
}

/* Main content area stretches to fit and enables scrolling. */
main {
  flex: 1;
  overflow-y: scroll;
  height: 100vh;
  /* Important so that pre elements do not overflow the width
   * and therefore will respect overflow and scroll properly */
  min-width: 0;
}

/* Optionally restrict the main content width and centre it horizontally */
main > header + section {
  padding: 2rem 1rem;
  max-width: 760px;
  margin: 0 auto;
}
```

{{#>alert label="info"}}
It is important that scrolling is done on the `main` element not the `body` otherwise the sidebar sticky positioning has some subtle issues.
{{/alert}}

## Script

You should have a working sidebar by now but there is one small issue; as we toggle the sidebar menu visibility and navigate around the site the *open* state for the sidebar is not remembered.

To remedy this you can add the tiny [sidebar.js][] script to all your pages by changing the plugin dependency to apply the script file:

```toml
[dependencies]
"std::sidebar" = { version = "~1", apply = { styles = [ "**" ], scripts = [ "**" ] } }
```

## Custom

Sidebar navigation menus will need to change depending upon the location; we can use the [[docs/reference/helpers/import|import helper]] to achieve this as it walks parent folders to find the nearest template. First create a `sidebar.hbs` file in the `site` folder and put your default sidebar navigation menu inside.

Then update `site/partials/sidebar-content.hbs` removing the directory listing:

```handlebars
\{{> listing}}
```

And replace it with an `import` statement:

```handlebars
\{{import "sidebar"}}
```

Now you can add a `sidebar.hbs` file to any folder within `site` and it will be used for the sidebar content!


{{import "footer"}}

[std::sidebar]: https://github.com/uwe-app/plugins/tree/main/std/sidebar
[std::core]: https://github.com/uwe-app/plugins/tree/main/std/core
[std::listing]: https://github.com/uwe-app/plugins/tree/main/std/listing
[community issues]: https://github.com/uwe-app/community/issues
[sidebar.js]: https://github.com/uwe-app/plugins/blob/main/std/sidebar/scripts/sidebar.js
