# heroku cookbook

[![Build Status](https://travis-ci.org/alt3-cookbooks/heroku.svg)](https://travis-ci.org/alt3-cookbooks/heroku)

Installs Heroku using one of the following installation types:

- [standalone](https://toolbelt.heroku.com/standalone)
- [toolbelt](https://toolbelt.heroku.com/debian)
- [gem](https://rubygems.org/gems/heroku)

##Recipes

###heroku::default

Convenience recipe to conditionally include the needed installation recipe.

####Attributes

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node[:heroku][:install_type]</code></td>
    <td>Installation method to use (standalone, toolbelt, gem).</td>
    <td><em>toolbelt</em></td>
  </tr>
</table>

##heroku::standalone

Downloads binary from heroku.com and adds it to to the user's PATH.

#heroku::toolbelt

Apt installation of package heroku-toolbelt (not using Heroku's install-ubuntu.sh script).

##heroku::gem

Todo
