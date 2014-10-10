# heroku cookbook

[![Build Status](https://travis-ci.org/alt3-cookbooks/heroku.svg)](https://travis-ci.org/alt3-cookbooks/heroku)

Installs Heroku using one of the Heroku provided installation methods:

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
    <td><code>node[:heroku][:installation_method]</code></td>
    <td>Installation method as made available by Heroku  (standalone/debian)).</td>
    <td><em>standalone</em></td>
  </tr>
</table>
