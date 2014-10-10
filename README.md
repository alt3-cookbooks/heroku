# heroku cookbook

[![Build Status](https://travis-ci.org/alt3-cookbooks/heroku.svg)](https://travis-ci.org/alt3-cookbooks/heroku)

Installs Heroku using one of the following Heroku provided installation types:

- [standalone](https://toolbelt.heroku.com/standalone)
- [debian](https://toolbelt.heroku.com/debian) (installs heroku, git and [Foreman](https://github.com/ddollar/foreman))

##Recipes

###heroku::install

Installs heroku and adds binary to user's PATH.

####Attributes

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node[:heroku][:installation_type]</code></td>
    <td>Installation method as provided by Heroku  (`standalone` or `debian`).</td>
    <td><em>standalone</em></td>
  </tr>
</table>
