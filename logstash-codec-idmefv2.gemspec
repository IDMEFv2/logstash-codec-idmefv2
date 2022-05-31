Gem::Specification.new do |s|

  s.name            = 'logstash-codec-idmefv2'
  s.version         = '0.9.3'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Create IDMEFv2 in JSON"
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Teclib"]
  s.email           = 'fdechelle@teclib.com'
  s.homepage        = "http://www.teclib.com"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "VERSION", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "codec" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_runtime_dependency 'nokogiri'

  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'insist'
end
