+++
description = "Add and edit pages"
+++

{{import "header"}}

Pages are Markdown documents that use a template engine for rendering; to add a new page to your website create a file with a `.md` extension in the `site` folder.

{{#> note label="info"}}
For brevity this documentation will omit the `site` prefix when specifying source file paths; unless otherwise specified you should assume file paths refer to documents in the `site` directory.
{{/note}}

File names correspond to the links for your pages so you should follow some simple conventions when naming files:

* Use lowercase characters
* Use hyphens to delimit words (avoid spaces and underscores)

This will make your website links easy to understand and is considered best practices for *Search Engine Optimization* (SEO).

To create a new page add a Markdown file with a `.md` extension to the project `site` directory, let's call it `contact.md`.

```markdown
# Contact

To get in touch with us please email ...
```

Now run the live reload server `uwe dev` and navigate to the `/contact/` URL; when you save changes to the page the browser tab will reload.

## Defining Page Data

Page data is defined as [TOML][]; it is loaded first from the global page data in the [[docs/reference/settings]] then from a `[pages]` table if it exists and finally from the file front matter which takes precedence.

### Global Data

Define global variables to be made available to all page templates in the `[page]` section of the settings:

```toml
[page]
description = "Description of the project"
keywords = "Vanilla, Static, Website"
```

### Pages Table

You can assign data to specific pages by source path using the `[pages]` table if necessary. This example shows how to avoid embedding front matter in a file yet still apply page data:

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
Be sure to quote the path to prevent a [TOML][] error; paths are resolved relative to the `site` directory and it is an error if the file does not exist. So that paths are platform independent you should always use a forward slash.
{{/note}}

## Using HTML

If you want to also use plain HTML files with the `.html` extension then you can add this to your site settings:

```toml
[build]
extend = ["html"]
```

{{#> note type="tip" label="tip"}}
HTML files are not parsed as Markdown but you can use the [[docs/reference/helpers/markdown|markdown helper]] if you need it.
{{/note}}

{{#> note type="warn" label="warn"}}
Mixing HTML with Markdown makes naming collisions more likely, see [[docs/pages/clean-urls|clean URLs]] for more information.
{{/note}}

---

The next section looks at defining data for individual pages using [[docs/guides/getting-started/front-matter]] and the meta data typically assigned to pages.

{{import "footer"}}

[TOML]: https://toml.io
