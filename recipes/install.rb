#
# Cookbook Name:: heroku
# Recipe:: install
#

# Create binary heroku and add bin to PATH
ark "Heroku standalone" do
  url node.heroku[:client_url]
  path node.heroku[:installation_path]
  creates 'heroku'
  append_env_path true
  action :install
end
