# heroku cookbook

[![Build Status](https://travis-ci.org/alt3-cookbooks/heroku.svg)](https://travis-ci.org/alt3-cookbooks/heroku)

Installs Heroku using one of the following installation types:

- [standalone](https://toolbelt.heroku.com/standalone)
- [toolbelt](https://toolbelt.heroku.com/debian)
- [gem](https://rubygems.org/gems/heroku)

# Recipes

## heroku::default

Convenience recipe to conditionally include the needed installation recipe.

### Attributes

- `node[:heroku][:preferred_install]` - Specifies how to install heroku (defaults to toolbelt)

## heroku::standalone

Downloads binary from heroku.com and adds it to to the user's PATH.

### Attributes

- `node[:heroku][:standalone][:source_url]` - Change if you want to use a different heroku binary.

## heroku::toolbelt

Proper Chef apt toolbelt installation (not using Heroku's install-ubuntu.sh script).

### Attributes

- `node[:heroku][:toolbelt][:apt_repo]` - Heroku apt repository url
- `node[:heroku][:toolbelt][:apt_key]` - URL to apt key source
- `node[:heroku][:toolbelt][:apt_key_id]` - Key id of the apt key source

##heroku::gem

Todo
