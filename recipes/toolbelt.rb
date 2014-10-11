#
# Cookbook Name:: heroku
# Recipe:: toolbelt
#
# Description:
# Installs Heroku toolbelt the Chef way using apt as pr
#

#  echo "deb http://toolbelt.heroku.com/ubuntu ./" > /etc/apt/sources.list.d/heroku.list
#  wget -O- https://toolbelt.heroku.com/apt/release.key | apt-key add -
#  apt-get update
#  apt-get install -y heroku-toolbelt


apt_repository 'heroku' do
  uri        'http://toolbelt.heroku.com/ubuntu'
  components ['main', 'stable']
  key        'https://toolbelt.heroku.com/apt/release.key'
end




# Add heroku source list to apt
#template node[:heroku][:toolbelt][:source_list] do
#  source 'heroku.list.erb'
#  notifies :run, 'execute[apt-get update]', :immediately
#  not_if { ::File.exists?(node[:heroku][:toolbelt][:source_list]) }
#end

#remote_file "#{Chef::Config[:file_cache_path]}/distribute_setup.py" do
#  source "http://python-distribute.org/distribute_setup.py"
#  mode '0644'
#  not_if { ::File.exists?(pip_binary) }
#end