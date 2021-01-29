+++
description = "Guide visitors with links to parent folders"
+++

{{import "header"}}

The *crumbtrail* pattern is very useful to orientate visitors when navigating deep folder hierarchies; you can see an example above ^^.

The [[docs/reference/helpers/crumbtrail|crumbtrail helper]] does the job of iterating the parent folders and the [std::crumbtrail][] plugin provides a partial and stylesheet for rendering a crumbtrail `nav` menu.

To use the crumbtrail system first add a dependency on the [std::crumbtrail][] plugin to your `site.toml` settings:

```toml
[dependencies."std::crumbtrail"]
version = "~1"
apply = { styles = [ "**" ] }
```

Then call the partial supplied by the plugin wherever you want to render a crumbtrail:

```handlebars
\{{> crumbtrail~}}
```

Which will create markup like this:

```html
{{> crumbtrail~}}
```

The [plugin styles](https://github.com/uwe-app/plugins/blob/main/std/crumbtrail/styles/crumbtrail.css) are small so you may prefer to copy them into your stylesheet. If you do copy the styles to your project change the dependency so you that the plugin styles are not applied; it should look like this:

```toml
[dependencies."std::crumbtrail"]
version = "~1"
```

{{import "footer"}}

[std::crumbtrail]: https://github.com/uwe-app/plugins/tree/main/std/crumbtrail
