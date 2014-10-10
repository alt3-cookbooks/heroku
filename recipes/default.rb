#
# Cookbook Name:: heroku
# Recipe:: default
#

# Create binary heroku and add bin to PATH
ark "Heroku standalone" do
  url default[:heroku][:client_url]
  path default[:heroku][:installation_path]
  creates 'heroku'
  append_env_path true
  action :install
end
