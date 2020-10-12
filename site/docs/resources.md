+++
description = "Symbolic links for content"
+++

{{> components}}

Resources are *symbolic links* in the build directory.

On this website we offer [install]({{ link "/install/" }}) files to download  but there is no need to copy them each time we create a build so instead they are defined as *resources*.

To define a resource just place it in the `resources` folder within `site`; which will create *symbolic links* for those files to make our builds even faster.

If your project has lots of media files such as videos or photos you should put them in the resource folder; a good rule of thumb is that if you have content that is not a [page]({{ link "/docs/pages/" }}) nor an asset then it should be a resource.

If you want to change the location for your project resources you can configure the path in [settings]({{ link "/docs/settings/" }}).

{{> back}}
