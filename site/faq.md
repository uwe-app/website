+++
description = "Frequently asked questions"
+++

## FAQ

Some frequently asked questions and relevant answers!

### Why not use one of the myriad other tools?

Universal web editor is incredibly fast and predicated on the idea that not every website needs to be a huge bundle of Javascript; many people still appreciate simple, clean pages with a focus on the content.

### Do you support Javascript transpilers?

Yes, use one of the Javascript/Typescript [build tools][].

### Do you support CSS preprocessors?

Yes, use one of the style [build tools][].

### Can I bring my own template language?

No. It's just [handlebars][] with some useful [[docs/reference/helpers]].

### What flavor of Markdown is supported?

We use [commonmark][] with support for a few non-standard features:

* [Strike through](https://github.github.com/gfm/#strikethrough-extension-)
* [Tables](https://github.github.com/gfm/#tables-extension-)
* [Task lists](https://github.github.com/gfm/#task-list-items-extension-)

### Where should I report bugs or request features?

Please raise an issue [in the community repository](https://github.com/uwe-app/community/issues) or chat with us on [discord][].

### Can I submit a plugin?

Yes, if you have created a useful plugin please submit it to the [plugins repository](https://github.com/uwe-app/plugins) as a PR.

### How did you make it so fast?

The speed is thanks to [rust][] and the projects listed in the [[credits]].

[build tools]: https://github.com/uwe-app/cookbook/tree/main/build "Build Tools"
[handlebars]: https://handlebarsjs.com/ "Handlebars"
[commonmark]: https://commonmark.org/ "Commonmark"
[rust]: https://www.rust-lang.org/ "Rust"
[discord]: https://discord.gg/gmhWetv2fE "Discord Chat"
