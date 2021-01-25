+++
description = "Apply plugin styles and scripts"
+++

{{import "header"}}

Dependencies can `apply` stylesheets and scripts in plugins to the pages in our project using glob patterns.

## Styles

To apply the stylesheet in the `std::core` plugin to all pages the dependency would look like this:

```toml
"std::core" = { version = "~4", apply = { styles = ["**"] } }
```

The paths used when applying styles and scripts are glob patterns for *destinations*; so if instead of all pages we only wanted to apply to direct descendants of our `docs` folder we could do:

```toml
"std::core" = { version = "~4", apply = { styles = ["/docs/**"] } }
```

Or for all pages in the `docs` folder:

```toml
"std::core" = { version = "~4", apply = { styles = ["/docs/**/**"] } }
```

## Scripts

To add scripts to our pages we apply patterns in `scripts`. For example the [std::sidebar][] plugin has a tiny script to recall the open state of the sidebar as we navigate. To use the script in all our pages we apply it like this:

```toml
[dependencies."std::sidebar"]
version = "~1"
apply = { styles = [ "**" ], scripts = [ "**" ] }}
```

Notice plugins can supply stylesheets and scripts and we can choose how to apply them to our pages.

## Filters

Applying styles or scripts will apply *all the files a plugin defines* but sometimes it is preferable to choose from variations that a plugin offers.

An alternative syntax lets us apply `to` pages using a `filter` match against each file name, for example:

```toml
[dependencies."std::syntax"]
version =  "~1"
apply = { styles = [ { to = "**", filter = "base16-*.css" } ] }
```

Will include all the style sheets in the `std::syntax` plugin whose name begins with `base16-` and applies them to every page.

{{import "footer"}}

[semver]: https://semver.org/
[main.hbs]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs
[std::sidebar]: https://github.com/uwe-app/plugins/blob/master/std/sidebar
