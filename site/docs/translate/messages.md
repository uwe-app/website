+++
description = "Defining and using messages"
label = "messages"
+++

{{import "header"}}

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

{{#> note label="info"}}
See [project fluent][] for more information on the syntax used in `.ftl` files.
{{/note}}

## Variables

Variables can be passed to messages using the helper hash parameters. For example, if we update the message file to include a variable reference:

```text
welcome = Bonjour { $name }!
```

We can pass the variable value like this:

```handlebars
\{{fluent "welcome" name="Emma"}}
```

## Parameters

If you need to pass a multi-line message as a variable there is an alternative block syntax which uses a child `fluentparam` block.

For example to pass a `greeting` variable:

```handlebars
{{{{raw~}}}}
{{#fluent "welcome"}}
{{#fluentparam "greeting"}}
This is a long variable that may need to span
several lines; it will be passed as the "greeting"
variable to the "welcome" message.
{{/fluentparam}}
{{/fluent}}
{{{{~/raw}}}}
```

{{import "footer"}}

[project fluent]: https://www.projectfluent.org/
