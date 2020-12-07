+++
description = "Folder structure and configuration"
+++

{{import "header"}}

Data sources are a folder in `site/data-sources` containing a configuration file and JSON data documents. When data sources are found an `all` index is created containing all the documents and you can [[docs/data-sources/create-indices|create additional indices]] if you need to.

Imagine we are creating pages from a collection of quotes; the filesystem layout looks like this:

```
site/data-sources
└── quotes
    ├── documents
    │   └── empty-your-mind.json
    └── datasource.toml
```

Until you need to create your own [[docs/data-sources/create-indices|custom indices]] the `datasource.toml` file can be empty because the `all` index is created automatically and that is what we will use in these examples.

Documents for the data source go in the `data-sources/quotes/documents` folder, for example `empty-your-mind.json` might look like this:

```json
{
  "author": "Bruce Lee",
  "quote": "Empty your mind, be formless. Shapeless, like water. [...] Be water, my friend."
}
```
Documents are assigned an `id` *slug* derived from the file name so `empty-your-mind.json` creates an `id` of `empty-your-mind` (as would the file `Empty your mind.json`).

We use a *slug* so links are URL friendly but it does mean that document identifiers can collide. For this reason we recommend using file names that are already safe to use as a slug.

If a collision is detected it is an error and you must update your file names to unique slugs.

Next: [[docs/data-sources/page-template]]

{{> back}}
