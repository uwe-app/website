+++
title = "About"
description = "Information on the blueprint design"
+++

{{> components}}

Most web developers have a set of tools they are familiar with that serve as a good starting point for a new web site or application.

Blueprints are project templates that provide the foundation so it is easy to get up and running with a new web project; they are git repositories so it is simple to create and use your own.

They are managed using the `init` command; the first time the command is run a clone of the [blueprint][] repository is cached into `$HOME/.hypertext/blueprint`.

This repository consists of submodules which are the individual blueprints which can then be referenced by path (for example `style/newcss`).

We manage a set of standard blueprints in several categories:

* `style`: Style blueprints.
* `contrib`: Third-party contributions.

See the [blueprint][] repository to learn how to contribute your own preference.

Next check out [how to create a new project]({{ link "/docs/blueprints/create/" }}) from a blueprint.

{{> back}}

[blueprint]: https://github.com/hypertext-live/blueprint
