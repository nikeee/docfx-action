# docfx-action
A GitHub action to run [DocFX](https://dotnet.github.io/docfx/) and generate a documentation site.

## Usage
```yaml
jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    name: A job to say hello
    steps:
    - uses: actions/checkout@v1
    # ...
    - uses: nikeee/docfx-action@v1.0.0
      name: Build Documentation
      with:
        args: path/to/your/docfx.json

    # Publish generated site using GitHub Pages
    - uses: maxheld83/ghpages@master
      name: Publish Documentation on GitHub Pages
      env:
        BUILD_DIR: _site # docfx's default output directory is _site
        GH_PAT: ${{ secrets.GH_PAT }} # See https://github.com/maxheld83/ghpages
```

In general, to run `docfx <something>`, you can use:
```yaml
    - uses: nikeee/docfx-action@v1.0.0
      with:
        args: <something>
```
