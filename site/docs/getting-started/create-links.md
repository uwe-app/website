+++
description = "Best practices for creating links"
+++

{{> crumbtrail}}

## Links

A powerful feature of our system is the *compile-time link checking* which verifies that your links are valid.

To ensure your links are checked at compile time you should use the [link helper]({{ link "/docs/helpers/link/" }}) like this:

```handlebars
[Contact](\{{ link "/contact/" }})
```

Which when rendered would create a relative link to the resource:

```markdown
[Contact]({{ link "/contact" }})
```

You pass an absolute path to the link helper and it will check the link exists so that if you move the page you will need to update all the links to the page.
