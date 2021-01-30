+++
description = "Collections settings"
+++

{{import "header"}}

See the [[docs/collections]] section for more information about working with collections.

## Data Provider

These fields can be used when creating a collection data provider, see [[docs/collections/data-provider]] for example usage.

* `provider` The provider implementation; one of `pages`, `files` or `document` (required)
* `type` The type of the data source; one of `json` or `toml` (required)
* `from` Path to the directory or file to load from (required)
* `excludes` List of glob patterns used to exclude pages (optional)

## Index

These fields can be used when defining a collections index, see [[docs/collections/map-indices]] for example usage.

* `key` Dot-delimited path to a property in the source document (required)

{{#> note}}
The wildcard value `*` for `key` will match all documents.
{{/note}}

## Query

These fields can be used in page queries, see [[docs/collections/queries]] for example usage.

* `name` The name of the collection (required)
* `index` The name of the index (required)
* `include-docs` Whether to include the collection documents (optional, default `false`)
* `sort` A key used to sort the query result (optional)
* `desc` List results in descending order (optional, default `false`)
* `limit` Set an upper bound for the number of results (optional)
* `parameter` Name of the parameter to assign to a template (optional, default `result`)
* `each` Generate a page for each item in the result list (optional, default `false`)

{{import "footer"}}
