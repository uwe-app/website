+++
description = "Link to page content"
+++

{{import "header"}}

For pages with a lot of content it can be helpful to provide links to each section of the page using a *table of contents*.

{{> source-code repo="cookbook" path="content/table-of-contents" title="Table of Contents"}}

To generate table of contents enable the transform in your site settings:

```toml
[transform.html]
toc = true
```

Which will make the compiler generate anchors for every heading and enable support for the [[docs/reference/helpers/toc|toc helper]].

Now for pages that need a table of contents you just call the [[docs/reference/helpers/toc|toc helper]] like this:

```handlebars
\{{toc}}
```

Using the [details element][] as a wrapper for the table of contents allows the visitor to collapse the menu; see this [example partial][] for markup and a [[docs/guides/getting-started/content|working example is here]].

{{#> note label="warn" type="warn"}}
Be careful where you put headings otherwise you may get too many entries in your table of contents. For example, if you are using a sidebar navigation with sections it is tempting to use headings to delimit the sections but these would also appear in the table of contents which is probably not what you want!
{{/note}}

{{import "footer"}}

[details element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details
[example partial]: https://github.com/uwe-app/website/blob/main/site/partials/table-of-contents.hbs
