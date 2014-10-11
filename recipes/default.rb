#
# Cookbook Name:: heroku
# Recipe:: default
#

include_recipe 'heroku::standalone' if node[:heroku][:install_type] == 'standalone'
include_recipe 'heroku::toolbelt' if node[:heroku][:install_type] == 'toolbelt'
include_recipe 'heroku::gem' if node[:heroku][:install_type] == 'gem'
