require 'rake'
require 'rspec/core/rake_task'
require 'yaml'

properties = YAML.load_file('properties.yml')

desc "Run serverspec to all hosts"
task :spec => 'serverspec:all'

#task :test    => 'spec:all'
#task :default => :spec

namespace :serverspec do
  task :all => properties.keys.map {|key| 'serverspec:' + key.split('.')[0] }
  properties.keys.each do |key|
    desc "Run serverspec to #{key}"
    RSpec::Core::RakeTask.new(key.split('.')[0].to_sym) do |t|
      ENV['TARGET_HOST'] = key
      t.pattern = 'spec/{' + properties[key][:roles].join(',') + '}/*_spec.rb'
      t.rspec_opts = "--format documentation \
      --format html --out /home/tempuser/tests.html \
      --format json --out /home/tempuser/tests.json"
    end
  end
end
