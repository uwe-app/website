+++
description = "Link to page content"
+++

{{> crumbtrail}}

## {{title}}

For pages with a lot of content it can be helpful to provide links to each section of the page using a *table of contents*.

To enable support for generating table of contents add this table to your site settings:

```toml
[transform.html]
toc = true
```

Which will make the compiler generate anchors for every heading and enable support for the `toc` helper.

Now for pages that need a table of contents you just call the `toc` helper like this:

```handlebars
\{{toc}}
```

Using the [details element][] as a wrapper for the table of contents allows the visitor to collapse the menu; see this [example partial][].

{{> next-page menu="design-patterns-idx"}}

[details element]: https://developer.mozilla.org/en-US/docs/Web/HTML/Element/details
[example partial]: 
