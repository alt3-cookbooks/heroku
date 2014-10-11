#
# Cookbook Name:: heroku
# Recipe:: toolbelt
#
# Description:
# Installs the Heroku toollbelt
#

#  echo "deb http://toolbelt.heroku.com/ubuntu ./" > /etc/apt/sources.list.d/heroku.list
#  wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -
#  apt-get update
#  apt-get install -y heroku-toolbelt

# Add heroku source list to apt
template '/etc/apt/sources.list.d/heroku.list' do
  source 'heroku.list.erb'
  notifies :run, 'execute[apt-get update]', :immediately
end

