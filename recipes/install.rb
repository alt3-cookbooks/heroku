#
# Cookbook Name:: heroku
# Recipe:: default
#
include_recipe 'ark::default'

# Create binary heroku and add bin to PATH
ark "heroku" do
  url node.heroku[:client_url]
  path node.heroku[:installation_path]
  creates 'heroku'
  append_env_path true
  action :install
end
