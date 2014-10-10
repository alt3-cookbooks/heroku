# heroku cookbook

[![Build Status](https://travis-ci.org/alt3-cookbooks/heroku.svg)](https://travis-ci.org/alt3-cookbooks/heroku)

Installs Heroku the Chef way using one of the following Heroku provided installation types:

- [standalone](https://toolbelt.heroku.com/standalone)
- [debian](https://toolbelt.heroku.com/debian) (installs heroku, git and [Foreman](https://github.com/ddollar/foreman))

##Requirements

- [cookbook ark](https://community.opscode.com/cookbooks/ark)

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
    <td>One of the two available heroku installations types (`standalone` or `debian`). **Note:** debian not implemented yet.</td>
    <td><em>standalone</em></td>
  </tr>
</table>
