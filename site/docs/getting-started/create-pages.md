+++
description = "Add and edit pages"
+++

{{> crumbtrail}}

## {{title}}

To create a new page add a Markdown file with a `.md` extension to the project `site` directory, let's call it `contact.md`.

```markdown
## Contact

To get in touch with us please email ...
```

Now run the live reload server `uwe --live` and navigate to the `/contact/` page so see your changes in  the browser as you edit the file.

## Page Data

The page title is automatically derived from the file name but you can set it explicitly in the page frontmatter:

```markdown
+++
title = "Get in touch"
+++

## Contact

To get in touch with us please email ...
```

This is where you would also set the `description` for the page which is embedded in the markup (for web crawlers) but also because it is useful to give brief descriptions of links (for example when defining menus).

```markdown
+++
title = "Get in touch"
description = "How to contact us and find our location"
+++
```

See [pages]({{ link "/docs/pages/" }}) to learn more about defining page data.

{{> next-page menu="getting-started-idx"}}
