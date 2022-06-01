# coding: utf-8
Gem::Specification.new do |s|
  s.name          = 'logstash-codec-idmefv2'
  s.version       = '0.1.0'
  s.licenses      = ['Apache-2.0']
  s.summary       = 'A logstash codec plugin for IDMEF V2.'
  s.description   = 'This logstash codec plugin allows to transform messages to/from IDMEF V2 standard.'
  s.homepage      = 'https://github.com/teclib-idmef/logstash-codec-idmefv2'
  s.authors       = ['François Déchelle']
  s.email         = 'fdechelle@teclib.com'
  s.require_paths = ['lib']

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "codec" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', "~> 2.0"
  s.add_runtime_dependency 'logstash-codec-line'
  s.add_development_dependency 'logstash-devutils'
end
