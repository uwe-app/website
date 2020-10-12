+++
description = "Where to put partials and how to include them"
+++

{{> components}}

Partial templates (`.hbs`)  in the `site/partials` directory are automatically registered using a relative path without the file extension. So the file `site/partials/header.hbs` can be included with:

```handlebars
{{{{raw}}}}{{> header}}{{{{/raw}}}}
```

Markdown documents are parsed via handlebars before being rendered to HTML which allows document snippets using the normal handlebars syntax. The referenced templates will also be parsed as markdown so we recommend using the `.md.hbs` file extension to distinguish them; the `.hbs` extension is always removed so you can reference snippets like so:

```handlebars
{{{{raw}}}}{{> snippet.md}}{{{{/raw}}}}
```

You can configure the location for partials in [settings]({{ link "/docs/settings/" }}).

{{> back}}
