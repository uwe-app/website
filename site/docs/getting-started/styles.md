+++
description = "Change the stylesheets"
+++

{{import "header"}}

## Styles

To add a custom stylesheet to *all your pages* create a `main.css` file in the `assets/styles` folder; or if you want to use a different file for your main style sheet:

```toml
[style]
src = "assets/styles/site.css"
```

To add another style sheet to all pages, perhaps for print media, you can use the global page data:

```toml
\[[page.styles]]
src = "assets/styles/print.css"
media = "print"
```

To assign style sheets to particular pages use front matter:

```markdown
+++
\[[styles]]
src = "assets/styles/custom.css"
+++

# \{{title}}
```

{{import "footer"}}
