require 'serverspec'
require 'net/ssh'

set :backend, :ssh

require 'yaml'

properties = YAML.load_file('properties.yml')

#host = '10.112.238.116'
set_property properties[host]


set :host, ENV['HOST']
set :ssh_options, :user => 'tempuser', :port => 22, :password => 'tempuser'


