#
# Cookbook Name:: heroku
# Recipe:: toolbelt
#
# Literal Chef translation of Heroku's install-ubuntu.sh script:
#      echo "deb http://toolbelt.heroku.com/ubuntu ./" > /etc/apt/sources.list.d/heroku.list
#      wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -
#      apt-get update
#      apt-get install -y heroku-toolbelt
#

# Add heroku to apt sources
apt_repository 'heroku' do
  uri node["heroku"]["toolbelt"]["apt_repo"]
  key node["heroku"]["toolbelt"]["apt_key"]
  components node["heroku"]["toolbelt"]["components"]
  distribution node["heroku"]["toolbelt"]["distribution"]
end

# Install heroku-toolbelt packages
package 'heroku-toolbelt' do
  action :install
end
