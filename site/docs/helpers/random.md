+++
description = "Choose a random array entry"
+++

{{> components}}

Select a random element from an array and assign it to the `entry` field:

```handlebars
{{{{raw}}}}
{{#random [1,2,3]}}
{{json entry}}
{{/random}}{{{{/raw}}}}
```

{{> back}}
