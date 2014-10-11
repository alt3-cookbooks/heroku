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

Proper Chef apt toolbelt installation (not using Heroku's install-ubuntu.sh script).

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node[:heroku][:toolbelt][:apt_repo]</code></td>
    <td>Apt repo source url</td>
    <td><em>http://toolbelt.heroku.com/ubuntu</em></td>
  </tr>
  <tr>
    <td><code>node[:heroku][:toolbelt][:apt_key]</code></td>
    <td>Apt key source url</td>
    <td><em>https://toolbelt.heroku.com/apt/release.key</em></td>
  </tr>
  <tr>
    <td><code>node[:heroku][:toolbelt][:apt_key_id]</code></td>
    <td>Key id for the heroku apt key</td>
    <td><em>0F1B0520</em></td>
  </tr>
</table>

##heroku::gem

Todo
