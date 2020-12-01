+++
description = "Defining and using messages"
+++

{{> crumbtrail}}

# {{title}}

Messages are referred to by name, here is an example defining a message and then referencing it using the `fluent` helper.

If the file `site/locales/fr/main.ftl` contains:

```text
welcome = Bonjour!
```

Then we can reference the message in our content using this syntax:

```handlebars
\{{fluent "welcome"}}
```

If a message does not exist then an unknown localization message is rendered:

```text
{{fluent "missing-key"}}
```

{{#> note}}
See [project fluent][] for more information on the syntax used in `.ftl` files.
{{/note}}

## Variables

Variables can be passed to messages using the helper hash parameters. For example, if we update the message file to include a variable reference:

```text
welcome = Bonjour { $name }!
```

We can pass the variable value like this:

```handlebars
\{{fluent "welcome" name="Chloe"}}
```

{{> next-page menu="translate-idx"}}

[project fluent]: https://www.projectfluent.org/
