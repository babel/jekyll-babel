# Jekyll::Babel

A Babel converter for Jekyll.

[![Build Status](https://travis-ci.org/babel/jekyll-babel.svg?branch=master)](https://travis-ci.org/babel/jekyll-babel)

> Based on [jekyll-coffeescript](https://github.com/jekyll/jekyll-coffeescript) by [@parkr](https://github.com/parkr).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-babel'
```

Then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install jekyll-babel
```

You also need to add this plugin to your \_config.yml file:

```yml
plugins:
  - jekyll-babel
```

**Notes: `jekyll-babel` requires Ruby 2.3 or greater. Additionally, the dependency on `execjs` means you must also have a [valid JavaScript runtime](https://github.com/sstephenson/execjs#execjs) available to your project**

## Usage

In your Jekyll site, create Babel-aware files that start with the following lines:

```
---
---
```

You need those three dashes in order for Jekyll to recognize it as "convertible". They won't be included in the content passed to the Babel compiler.

## Options

Files with extensions `.es6`, `.babel` and `.jsx` will be processed. You may customize the list of white-listed extensions in your \_config.yml, by providing a string of comma-separated values:

```yml
babel_js_extensions: 'es6, babel, jsx' # Do not process .js files
```

You can also pass custom [Babel options](https://babeljs.io/docs/en/options) by adding the following to your \_config.yml:

```yml
babel_js_options:
  comments: false
  compact: true
```

## Contributing

1. Fork it ([`https://github.com/babel/jekyll-babel/fork`](https://github.com/babel/jekyll-babel/fork))
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
