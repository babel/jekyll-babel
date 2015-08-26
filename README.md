# Jekyll::Babel

A Babel converter for Jekyll.

[![Build Status](https://travis-ci.org/thejameskyle/jekyll-babel.svg?branch=master)](https://travis-ci.org/thejameskyle/jekyll-babel)

> Based on [jekyll-coffeescript](https://github.com/jekyll/jekyll-coffeescript) by @parkr.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-babel'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install jekyll-babel
```

**Notes: `jekyll-babel` requires Ruby 1.9.3 or greater. Additionally, the dependency on `execjs` means you must also have a [valid JavaScript runtime](https://github.com/sstephenson/execjs#execjs) available to your project**

## Usage

In your Jekyll site, create CoffeeScript files that start with the following
lines:

```
---
---
```

You need those three dashes in order for Jekyll to recognize it as
"convertible". They won't be included in the content passed to the Babel
compiler.

## Contributing

1. Fork it (`http://github.com/thejameskyle/jekyll-babel/fork`)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
