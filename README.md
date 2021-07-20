jekyll-theme-bootstrap5
=======================

![Build Status](https://github.com/rcvalle/jekyll-theme-bootstrap5/workflows/build/badge.svg)

A [Bootstrap-based](https://getbootstrap.com/) Jekyll theme.


Installation
------------

To install jekyll-theme-bootstrap5:

1. Add the `jekyll-paginate` and `jekyll-theme-bootstrap5` gems to your Jekyll
   site's `Gemfile` file:

       gem 'jekyll-paginate'
       gem 'jekyll-theme-bootstrap5'

2. On a command prompt or terminal with your Jekyll site's directory as the
   current working directory, run the following command:

       bundle install


Usage
-----

To use jekyll-theme-bootstrap5:

1. Add the `jekyll-paginate` plugin to your Jekyll site's `_config.yml` file
   under `plugins`:

       plugins:
         - jekyll-paginate

2. Add the `paginate` option to your Jekyll site's `_config.yml` file and
   replace `3` by the preferred maximum number of posts to display per page:

       paginate: 3

3. Add the `theme` option to your Jekyll site's `_config.yml` file:

       theme: jekyll-theme-bootstrap5

4. Copy the `_plugins` directory from the theme's directory to your Jekyll
   site's directory.

5. Copy the `category.html` and `tag.html` files from the theme's `_layouts`
   directory to your Jekyll site's `_layouts` directory.

6. Copy the `index.html` file from the theme's directory to your Jekyll site's
   directory.

7. Optional: Add the `analytics` option to your Jekyll site's `_config.yml` file
   and replace `UA-XXXXX-Y` by your Analytics tracking ID:

       analytics: UA-XXXXX-Y

8. Optional: Add the `disqus_shortname` option to your Jekyll site's
   `_config.yml` file and replace `EXAMPLE` by your Disqus shortname:

       disqus_shortname: EXAMPLE

See [_config.yml](_config.yml) for an example configuration file.


Contributing
------------

See [CONTRIBUTING.md](CONTRIBUTING.md).


License
-------

Licensed under the MIT License. See [LICENSE](LICENSE) for license text and
copyright information.
