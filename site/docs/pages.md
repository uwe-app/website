+++
description = "Pages and page data"
+++

{{> crumbtrail}}

Markdown documents are parsed as page templates; they are rendered using a [layout]({{ link "/docs/layout/" }}) unless configured to be [standalone]({{ link "/docs/standalone/" }}).

Like layouts they can include [partials]({{ link "/docs/partials/" }}) and may use all the handlebars features including [helpers]({{ link "/docs/helpers/" }}).

You can use the [extension settings]({{ link "/docs/settings/extension/" }}) to change which file extensions are rendered as pages which can be useful if you also want to render HTML pages as templates or other types of files.

## Defining Page Data

Page data is defined as TOML; it is loaded first from the [settings]({{ link "/docs/settings/" }}) then from a `[pages]` map (if it exists) and finally from the file front matter which takes precedence.

### Global Data

Define global variables to be made available to all page templates in the `[page]` section of the settings:

```toml
[page]
description = "Description of the project"
keywords = "Vanilla, Static, Website"
```

### Page Data

You can assign data to specific `[pages]` in the site settings which will overwrite the global variables:

```toml
[pages."/index.md"]
title = "Home"

[pages."docs/index.md"]
title = "Documentation"
```

Be sure to quote the path to prevent a TOML error; paths are resolved relative to the source directory and it is an error if the file does not exist. So that paths are platform independent you should always use a forward slash.

### Front Matter

Front matter in pages overrides the global and page data; it must be at the beginning of the file.

For HTML documents a comment is used for markdown the `+++` delimiter is used.

#### Markdown

```markdown
+++
title = "Document title"
+++
## \{{title}}
```

#### HTML

```html
<!--
title = "Document title"
-->
<h2>\{{title}}</h2>
```

### Data Fields

TODO: update this list

* `title` Document title.
* `description` Document description.
* `keywords` Document keywords.
* `standalone` Document is standalone (see [standalone][]).
* `draft` Document has draft status (see [drafts][]).
* `rewrite-index` Disable or enable [index rewrites][].

### Custom Data

To add custom data assign it to the map and then reference the data in your template:

```handlebars
+++
images = ["image1.jpg", "image2.jpg"]
+++
{{{{raw}}}}{{#each images}}
{{json this}}
{{/each}}{{{{/raw}}}}
```

### Reserved

These fields are read-only and you should **not use these keywords**; if you do they will be overwritten:

* `template` Rendered document content (layouts only).
* `lang` The current language.
* `href` A URL for the page.
* `file` Information about the current file.
* `documents` Default parameter name for queries.

{{> back}}

[index rewrites]: {{ link "/docs/rewrite-index/" }}
[standalone]: {{ link "/docs/standalone/" }}
[drafts]: {{ link "/docs/drafts/" }}
