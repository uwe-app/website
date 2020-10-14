+++
description = "Adds scripts to a page"
+++

{{> crumbtrail}}

## {{title}}

The scripts helper is called automatically to include scripts in a page by the [std::core layout][]. If you are designing your own layout you should call this helper just before the end of the document body.

```handlebars
\{{scripts}}
```

By default paths are relative but sometimes absolute paths may be necessary (in error pages for example):

```handlebars
\{{scripts abs=true}}
```

{{> back}}

[std::core layout]: https://github.com/uwe-app/plugins/blob/master/std/core/layouts/main.hbs 
