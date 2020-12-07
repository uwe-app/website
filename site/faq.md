+++
description = "Frequently asked questions"
+++

## FAQ

Some frequently asked questions and relevant answers!

### Why not use one of the myriad other tools?

Universal web editor is incredibly fast and predicated on the idea that not every website needs to be a huge bundle of Javascript; many people still appreciate simple, clean pages with a focus on the content.

### Do you support Javascript frameworks?

No. You can of course use your favourite Javascript framework as a pre-processor and write the files to the correct location for your website.

### Do you support CSS preprocessors?

Yes, we maintain a plugin for [Tailwind][] and plugins for [PostCSS][] and [Sass][] are in the works.

### Can I bring my own template language?

No. It's just [handlebars][] with some useful [[docs/reference/helpers]].

### What flavor of Markdown is supported?

We use [commonmark][] with support for a few non-standard features:

* [Strike through](https://github.github.com/gfm/#strikethrough-extension-)
* [Tables](https://github.github.com/gfm/#tables-extension-)
* [Task lists](https://github.github.com/gfm/#task-list-items-extension-)

### Where should I report bugs or request features?

Please raise an issue [in the community repository](https://github.com/uwe-app/community/issues).

### Can I submit a plugin?

Yes, if you have created a useful plugin please submit it to the [plugins repository](https://github.com/uwe-app/plugins) as a PR.

### How did you make it so fast?

The speed is thanks to [rust][] and the projects listed in the [[credits]].

[handlebars]: https://handlebarsjs.com/
[commonmark]: https://commonmark.org/
[rust]: https://www.rust-lang.org/
[Tailwind]: https://tailwindcss.com/
[PostCSS]: https://postcss.org
[Sass]: https://sass-lang.com
