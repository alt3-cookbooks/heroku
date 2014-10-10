# heroku cookbook

[![Build Status](https://travis-ci.org/alt3-cookbooks/heroku.svg)](https://travis-ci.org/alt3-cookbooks/heroku)

Installs Heroku using one of the following methods:

- [standalone](https://toolbelt.heroku.com/standalone)
- [apt_toolbelt](https://toolbelt.heroku.com/debian)
- [gem](https://rubygems.org/gems/heroku)

##Recipes

###heroku::default

Conditionally includes the requested installation method.

####Attributes

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node[:heroku][:installation_method]</code></td>
    <td>Installation method to use (standalone, apt_toolbelt, gem).</td>
    <td><em>apt_toolbelt</em></td>
  </tr>
</table>

##heroku::apt-toolbelt

Downloads binary from heroku.com and adds it to to the user's PATH.


##heroku::gem