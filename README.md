# heroku cookbook

[![Build Status](https://travis-ci.org/alt3/chef-heroku.svg)](https://travis-ci.org/alt3/chef-heroku)

Installs Heroku using one of the following installation types:

- [standalone](https://toolbelt.heroku.com/standalone)
- [toolbelt](https://toolbelt.heroku.com/debian)
- [gem](https://rubygems.org/gems/heroku)

# Attributes

- `node[:heroku][:preferred_install]` - Specifies installation method (defaults to toolbelt)
- `node[:heroku][:standalone][:source_url]` - URL to heroku binary.
- `node[:heroku][:toolbelt][:apt_repo]` - URL to heroku apt repository
- `node[:heroku][:toolbelt][:apt_key]` - URL to apt key source
- `node[:heroku][:toolbelt][:apt_key_id]` - Key id of the apt key source

# Recipes

## heroku::default

Convenience recipe to include the preferred installation method using `node[:heroku][:preferred_install]`.

## heroku::standalone

Downloads binary from heroku.com and adds it to the user's PATH.

## heroku::toolbelt

Chef apt toolbelt installation (not using Heroku's install-ubuntu.sh script).

##heroku::gem

@todo: not implemented yet

# Contributing

1. Fork it ( https://github.com/alt3/chef-heroku/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Make sure test-kitchen and foodcritic tests pass
4. Commit your changes (`git commit -am 'Adds some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request
