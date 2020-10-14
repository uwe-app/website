+++
description = "Adds stylesheets to a page"
+++

{{> crumbtrail}}

## {{title}}

The styles helper is called automatically to include stylesheets in a page by the [std::core layout][]. If you are designing your own layout you should call this helper in the head of the layout document.

```handlebars
\{{styles}}
```

By default paths are relative but sometimes absolute paths may be necessary (in error pages for example):

```handlebars
\{{styles abs=true}}
```

{{> back}}

[std::core layout]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs 
