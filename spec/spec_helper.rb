require 'serverspec'

set :backend, :exec

require 'yaml'

properties = YAML.load_file('properties.yml')

host = '192.168.0.124'
set_property properties[host]


#set :backend, :ssh
#set :host, '192.168.0.124'
#set :ssh_options, :user => 'username', :port => 22, :password => 'password'
