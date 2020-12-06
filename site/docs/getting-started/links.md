+++
description = "Best practices for creating links"
+++

{{import "header"}}

A powerful feature of our system is the *compile-time link checking* which verifies that your links are valid.

To link to another page use wiki-style syntax:

```text
\[[docs/getting-started/links]]
```

## Label & Title

The generated link will use the title for the page; if you want to set the default label whenever a page is linked put it in the front matter:

```toml
label = "links documentation"
```

Or use a vertical bar (`|`) to set the link label:

```text
\[[docs/getting-started/links|Learn how to create links]]
```

Which will render as:

* [[docs/getting-started/links|Learn how to create links]]

Use another vertical bar to set a custom title:

```text
\[[docs/getting-started/links|Links|Links guide]]
```

## Escaping

If you need to include a literal wiki-style link escape it with a backslash and it will be rendered as text:

```text
\\[[docs/getting-started/links]]
```

Links cannot include newlines, vertical pipes (`|`) or the right square bracket (`]`) it you need to include them in a value they must be escaped with a backslash.

For example here is how to use a vertical pipe in a link label:

```
\[[docs/getting-started/links|Links \| More Information]]
```

Which will render like this: [[docs/getting-started/links|Links \| More Information]].

## Link Helper

For finer control the [link helper]({{ link "/docs/helpers/link/" }}) can be used to link to a page, asset or resource; it verifies and prints the resource URL relative to the current page.

```handlebars
[Contact](\{{ link "contact" }})
```

Which when rendered would create a relative link to the resource:

```markdown
[Contact]({{ link "contact" }})
```

You pass an absolute path to the link helper and it will check the link exists so that if you move the page you will need to update all the links to the page which helps to ensure your site has no broken links!

{{import "footer"}}
