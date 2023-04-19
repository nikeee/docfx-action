# docfx-action
A GitHub action to run [DocFX](https://dotnet.github.io/docfx/) and generate a documentation site.

## Lovingly forked from @nikeee

Isaac Newton famously said, "If I have seen further, it is because I am standing on the shoulders of giants."

@nikeee gave us a huge leg up by publishing their repo. Our goal is to:

* Update this in the short-term to suit our needs (different version numbers, etc.)
* Make things a little more configurable (as we learn about GH Actions)
* Contribute it back upstream and close this out (assuming @nikeee is interested in the changes.)

## Usage
```yaml
jobs:
  generate_and_publish_docs:
    runs-on: ubuntu-latest
    name: Generate and publish the docs
    steps:
    - uses: actions/checkout@v1
      name: Checkout code
    - uses: nunit/docfx-action@v2.4.0
      name: Build Documentation
      with:
        args: path/to/your/docfx.json
    - uses: maxheld83/ghpages@master
      name: Publish Documentation on GitHub Pages
      env:
        BUILD_DIR: _site # docfx's default output directory is _site
        GH_PAT: ${{ secrets.GH_PAT }} # See https://github.com/maxheld83/ghpages
```

In general, to run `docfx <something>`, you can use:
```yaml
    - uses: nunit/docfx-action@v2.4.0
      with:
        args: <something>
```
