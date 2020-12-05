+++
description = "Create crumbtrails"
+++

{{import "header"}}

The `crumbtrail` helper iterates parent folders and can be used to create a navigation menu like the one above ^^. If a parent folder does not have an index file it will not be included!

{{#> note label="info"}}
Prefer the [std::crumbtrail][] plugin over using this helper directly; see [[docs/design-patterns/crumbtrails]] for more information.
{{/note}}

## Variables

Each iteration is passed the data for the target and some extra fields:

* `@first`: Whether this is the first part.
* `@last`: Whether this is the last part.
* `@href`: A relative `../` reference to the ancestor.

The `@first` field is useful if you want to skip the home page.

## Example

```handlebars
{{{{raw~}}}}
{{~#crumbtrail}}
{{title}} = {{@href~}}
{{/crumbtrail}}
{{{{~/raw}}}}
```

Renders as:

```text
{{~#crumbtrail}}
{{title}} = {{@href~}}
{{/crumbtrail}}
```

{{import "footer"}}

[std::crumbtrail]: https://github.com/uwe-app/plugins/tree/master/std/crumbtrail
