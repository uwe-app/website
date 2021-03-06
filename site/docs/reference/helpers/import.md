+++
description = "Import templates"
+++

{{import "header"}}

The `import` helper can be used to render templates; it is always an error if the template for an import cannot be found.

## Arguments

* `String|Path` The template name or file path.

## Example

This helper is useful when you have shared content for all the pages in a folder; for example you might want the same *footer* content for all the pages in a folder to add page related navigation.

First create a `footer.hbs` file in the folder and then each page can *import* it like this:

```handlebars
\{{import "footer"}}
```

{{#>alert label="info"}}
Do not specify a file extension when importing files using this syntax.
{{/alert}}

When importing files using a name the helper will walk the parent hierarchy to find the first template that matches the given name.

It is recommended to use a named template whenever possible but sometimes you may need to reference a template outside of the parent folder hierarchy. The `import` helper will also accept a path to the template but in this case you must specify the file extension:

```handlebars
\{{import ../../docs/footer.hbs}}
```

{{#>alert label="warn" type="warn"}}
Imports should not be confused with *partials* which should be placed in the `partials` folder and rendered using the `>` notation (eg: `\{{> crumbtrail}}`).
{{/alert}}

{{import "footer"}}
