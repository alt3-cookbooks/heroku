#
# Cookbook Name:: heroku
# Recipe:: default
#

include_recipe 'standalone' if node[:heroku][:installation_method] == 'standalone'
include_recipe 'apt-toolbelt' if node[:heroku][:installation_method] == 'apt-toolbelt'
include_recipe 'gem' if node[:heroku][:installation_method] == 'gem'
