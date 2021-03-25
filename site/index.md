+++
title = "UWE"

[[links]]
src = "/assets/styles/home.css"
rel = "stylesheet"

[[links]]
src = "/assets/svg/home-stacked.svg"
rel = "preload"
+++

<div class="home-banner">
  <img src="{{link "/assets/svg/home-stacked.svg"}}" />
  <p class="strapline">
    A platform for creating fast and secure websites
  </p>
  <nav>
    <a class="button x-large primary" href="{{link "/docs/tutorials/getting-started/"}}">Get Started</a>
    <a class="button x-large" href="{{link "/docs/"}}">Documentation</a>
  </nav>
  <h2>Key Features</h2>
</div>

<ul class="features">
  <li>
    <div>{{include /assets/svg/features/dark/fast.svg}}<h3>Extremely fast</h3></div>
    <p class="detail text-x-large"><img src="{{link "/assets/svg/small-mark.svg"}}" /> <span>is built for speed</span></p>
    <p class="text-large">We use modern tools like [[https://rust-lang.org|Rust]] to engineer a fast user experience; the UWE compiler can build hundreds of pages in milliseconds</p>
  </li>
  <li>
    <div>{{include /assets/svg/features/dark/zero-config.svg}} <h3>Zero config</h3></div>
    <p class="detail text-x-large"><img src="{{link "/assets/svg/small-mark.svg"}}" /> <span>uses project blueprints</span></p>
    <p class="text-large">Create a new blog, deck or website using a blueprint to get up and running in a flash.</p>
  </li>
  <li>
    <div>{{include /assets/svg/features/dark/cloud.svg}}<h3>Effortless publishing</h3></div>
    <p class="detail text-x-large"><img src="{{link "/assets/svg/small-mark.svg"}}" /> <span>deploys to servers or the cloud</span></p>
    <p class="text-large">Deploy to the cloud, a server or self-host on your own infrastructure.</p>
  </li>
  <li>
    <div>{{include /assets/svg/features/dark/reload.svg}}<h3>Live reload</h3></div>
    <p class="detail text-x-large"><img src="{{link "/assets/svg/small-mark.svg"}}" /> <span>automatically previews changes</span></p>
    <p class="text-large">Preview the design and content as you make changes.</p>
  </li>
  <li>
    <div>{{include /assets/svg/features/dark/templating.svg}}<h3>Flexible templates</h3></div>
    <p class="detail text-x-large"><img src="{{link "/assets/svg/small-mark.svg"}}" /> <span>uses [[https://handlebarsjs.com/|Handlebars]] with [[docs/reference/helpers]]</span></p>
    <p class="text-large">...</p>
  </li>
  <li>
    <div>{{include /assets/svg/features/dark/languages.svg}}<h3>Natural Languages</h3></div>
    <p class="detail text-x-large"><img src="{{link "/assets/svg/small-mark.svg"}}" /> <span>uses [[https://www.projectfluent.org/|Fluent]] for translations</span></p>
    <p class="text-large">Reach a wider audience with multiple languages.</p>
  </li>
</ul>
