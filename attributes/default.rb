
# Globals
default[:heroku][:install_type]             = 'toolbelt'
default[:heroku][:bin_dir]                  = '/usr/local/heroku/bin'

# Heroku standalone binary
default[:heroku][:standalone][:source_url]  = 'https://s3.amazonaws.com/assets.heroku.com/heroku-client/heroku-client.tgz'
default[:heroku][:standalone][:target_path] = '/usr/local/heroku'

# Heroku toolbelt apt repo
default[:heroku][:toolbelt][:apt_repo]      = 'http://toolbelt.heroku.com/ubuntu'
default[:heroku][:toolbelt][:distribution]  = ''
default[:heroku][:toolbelt][:components]    = ['./']
default[:heroku][:toolbelt][:apt_key]       = 'https://toolbelt.heroku.com/apt/release.key'
default[:heroku][:toolbelt][:apt_key_id]    = '0F1B0520'
