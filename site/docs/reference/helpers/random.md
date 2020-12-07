+++
description = "Choose a random array entry"
+++

{{import "header"}}

Select a random element from an array and assign it to the scope for the template block:

```handlebars
{{{{raw}}}}
{{#random [1,2,3]}}
{{json this}}
{{/random}}{{{{/raw}}}}
```

{{import "footer"}}
