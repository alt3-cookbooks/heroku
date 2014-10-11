#
# Cookbook Name:: heroku
# Recipe:: default
#

include_recipe 'heroku::standalone' if node[:heroku][:preferred_install] == 'standalone'
include_recipe 'heroku::toolbelt' if node[:heroku][:preferred_install] == 'toolbelt'
include_recipe 'heroku::gem' if node[:heroku][:preferred_install] == 'gem'
