+++
description = "Add and run integration tests"
+++

{{import "header"}}

Let's take a look at adding integration tests to a project. This tutorial will walk you through the process of creating a project, scaffolding integration tests and running them using the excellent [cypress test runner][cypress]. To follow along you should have already [[docs/installation/quick-install|installed the platform tools]] and a modern version of [nodejs][] that includes the `npx` program.

{{#>alert label="Learn how to"}}
{{toc from="h2" tag="ul"}}
{{/alert}}

## Introduction

Integration tests are useful to check your website is functioning as intended and the pages you need exist but be careful that you only test the functionality you really care about otherwise it is easy to write brittle tests that quickly break as you make changes to the website.

The [cypress test runner][cypress] can capture videos and take screenshots as well as run tests in different browsers so it is also useful for creating presentations and other tasks.

## Create a project

To begin let's create a new project; we'll call it `test-project`:

```
uwe new test-project
```

## Build the website

Next, let's make sure that the new project is working as expected:

```
cd test-project
uwe dev
```

This should build the new project and launch a browser tab displaying the website. If everything is working close the browser tab and quit the server using the `Ctrl+c` keyboard command.

## Install cypress

Now we need to install [cypress][] into the project. The first time this is done it can take a while to download the binary but afterwards should be much faster. To install with `npm` run:

```
npm install cypress --save-dev
```

See [installing cypress][] for other installation options.

## Scaffold integration tests

By convention we recommend putting all the files in the `test` folder and provide a command to scaffold the folders and files:

```
uwe task init-test
```

After running that command your project will have a new `test` folder and a test spec in the `test/integration` folder that visits the home page.

## Launch the test runner

The final step is to run our new integration tests:

```
uwe test
```

Which will perform the following tasks:

* Compile the project
* Start a server for the new build
* Run the tests using the server URL
* Shutdown the server

Whilst you could perform these tasks manually it would be tedious and prone to port errors.

{{#>alert}}
The server for the test runner uses an ephemeral port so you can have a development server running at the same time!
{{/alert}}

To learn more see the [cypress documentation][] and [[docs/in-depth/test-options]] to find out how to pass custom options.

{{import "footer"}}

[cypress]: https://www.cypress.io/
[installing cypress]: https://docs.cypress.io/guides/getting-started/installing-cypress.html
[cypress documentation]: https://docs.cypress.io/
[nodejs]: https://nodejs.org
