#
default[:heroku][:installation_method] = 'toolbelt'


# Attributes used during toolbelt installation
default[:heroku][:toolbelt][:source_list]  = '/etc/apt/sources.list.d/heroku.list'
