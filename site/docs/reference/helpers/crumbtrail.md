+++
description = "Create crumbtrails"
+++

{{import "header"}}

The `crumbtrail` helper iterates parent folders and can be used to create a navigation menu like the one above ^^. If a parent folder does not have an index file it will not be included.

{{#>alert label="info"}}
Prefer the [std::crumbtrail][] plugin over using this helper directly; see [[docs/cookbook/crumbtrails]] for more information.
{{/alert}}

## Local Variables

* `@first`: Whether this is the first part.
* `@last`: Whether this is the last part.
* `@href`: Relative path to the ancestor.

## Example

```handlebars
{{{{raw~}}}}
{{~#crumbtrail}}
{{title}} = {{{json @href~}}}
{{/crumbtrail}}
{{{{~/raw}}}}
```

Renders as:

```text
{{~#crumbtrail}}
{{title}} = {{{json @href~}}}
{{/crumbtrail}}
```

{{import "footer"}}

[std::crumbtrail]: https://github.com/uwe-app/plugins/tree/main/std/crumbtrail
