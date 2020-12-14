+++
description = "Include files"
+++

{{import "header"}}

The `include` helper can be used to include files into your pages; normally it is used for examples. Include paths are resolved relative to the page calling the `include` helper.

Include files must exist within the project folder which contains the [[docs/getting-started/site-settings]] (`site.toml`).

{{#> note label="info"}}
Use the *includes* folder [[docs/getting-started/conventions]] to automatically ignore included files.
{{/note}}

## Arguments

* `String|Path` The file system path to include.

## Example

A common technique is to put the `include` inside a fenced code block for examples:

````markdown
```markdown
\{{include ../../../partials/snippet.hbs~}}
```
````

Renders as:

````markdown
```markdown
{{include ../../../partials/snippet.hbs~}}
```
````

{{import "footer"}}
