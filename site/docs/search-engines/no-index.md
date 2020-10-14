+++
description = "Deny indexing to web crawlers"
+++

{{> crumbtrail}}

## {{title}}

To prevent a specific page from being indexed by web crawlers add the `noindex` flag to the frontmatter for a page:

```markdown
+++
noindex = true
+++

## Page Heading
```

This technique is particularly useful when combining pages in to a single page for print media but do not want to be penalized by search engines for duplicate content.

{{> next-page menu="seo-idx"}}


