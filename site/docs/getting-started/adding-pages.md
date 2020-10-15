+++
description = "Add and edit pages"
+++

{{> crumbtrail}}

# {{title}}

To create a new page add a Markdown file with a `.md` extension to the project `site` directory, let's call it `contact.md`.

```markdown
## Contact

To get in touch with us please email ...
```

Now run the live reload server `uwe --live` and navigate to the `/contact/` URL; when you save changes to the page the browser tab will reload.

## Defining Page Data

Page data is defined as [TOML][]; it is loaded first from the `[page]` [settings]({{ link "/docs/settings/" }}) then from a `[pages]` table if it exists and finally from the file front matter which takes precedence.

### Global Data

Define global variables to be made available to all page templates in the `[page]` section of the settings:

```toml
[page]
description = "Description of the project"
keywords = "Vanilla, Static, Website"
```

### Page Data

You can assign data to specific pages by source path using the `[pages]` table if necessary. This example shows how to avoid embedding front matter in a file to yet still apply page data:

```toml
[pages."google17a6906a04e2c5e4.html"]
standalone = true
rewrite-index = false
render = false
```

{{#> note type="info" label="info"}}
We think front matter makes the project easier to understand so we recommend using it wherever possible.
{{/note}}

{{#> note type="warn" label="warn"}}
Be sure to quote the path to prevent a [TOML][] error; paths are resolved relative to the source directory and it is an error if the file does not exist. So that paths are platform independent you should always use a forward slash.
{{/note}}

## Front Matter

Defining page specific data in front matter is described later in [creating pages]({{ link "/docs/pages/create/" }}).

{{> next-page menu="getting-started-idx"}}

[TOML]: https://toml.io
