+++
description = "Format the date and time"
+++

{{> crumbtrail}}

# {{title}}

The `date` helper can be used to format date and time values.

The first parameter is the datetime to format and the second is the format string; as a convenience various default formats are exposed to your templates to save constructing format strings for the common cases.

```handlebars
\{{date file.modified "%a %b %e %Y"}}
```

Which gives the result:

```
{{date file.modified "%a %b %e %Y"}}
```

Specifying a format string is far from ideal so templates are passed a `date.formats` object containing some useful pre-defined formats:

```handlebars
\{{date file.modified @root/date.formats.date-medium}}
```

Which is equivalent to the explicit format example above.

Next we look at the built-in convenience formats; see the [list of format specifiers](https://docs.rs/chrono/latest/chrono/format/strftime/index.html#specifiers) for more information on creating your own formats.

You may configure format specifiers, see [settings]({{ link "/docs/settings/" }}) for more information.

## Local

All datetime values are UTC if you want to account for the local time zone use the `local` hash parameter:

```handlebars
\{{date file.modified @root/date.formats.date-medium local=true}}
```

## Date

Here are all the built-in formats for date:

* `date-formats.date-short`: {{date file.modified @root/date.formats.date-short}}
* `date-formats.date-medium`: {{date file.modified @root/date.formats.date-medium}}
* `date-formats.date-long`: {{date file.modified @root/date.formats.date-long}}

## Time

Here are all the built-in formats for time:

* `date-formats.time-short`: {{date file.modified @root/date.formats.time-short local=true}}
* `date-formats.time-medium`: {{date file.modified @root/date.formats.time-medium local=true}}
* `date-formats.time-long`: {{date file.modified @root/date.formats.time-long local=true}}

Both `time-short` and `time-medium` are the 24-hour clock; `time-long` is the 12-hour clock.

## Date & Time

Here are all the built-in formats for date and time:

* `date-formats.datetime-short`: {{date file.modified @root/date.formats.datetime-short}}
* `date-formats.datetime-medium`: {{date file.modified @root/date.formats.datetime-medium}}
* `date-formats.datetime-long`: {{date file.modified @root/date.formats.datetime-long}}

{{import "footer"}}
