#
# Cookbook Name:: heroku
# Recipe:: standalone
#
include_recipe 'ark::default'

# Create binary heroku and add bin to PATH
ark "heroku" do
  url node["heroku"]["standalone"]["source_url"]
  path node["heroku"]["standalone"]["target_path"]
  creates 'heroku'
  append_env_path true
  action :install
  not_if { ::File.exists?("#{node["heroku"]["standalone"]["target_path"]}/heroku")}
end
