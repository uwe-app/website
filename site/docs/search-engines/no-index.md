+++
description = "Deny indexing to web crawlers"
+++

{{> crumbtrail}}

# {{title}}

To prevent a specific page from being indexed by web crawlers add the `noindex` flag to the frontmatter for a page:

```markdown
+++
noindex = true
+++

## Page Heading
```

This technique is particularly useful to avoid being penalized by search engines for duplicate content when combining pages in to a single page for print.

{{import "footer"}}
