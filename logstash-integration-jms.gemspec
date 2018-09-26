Gem::Specification.new do |s|

  s.name            = 'logstash-integration-jms'
  s.version         = '0.1.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Reads and Writes events to a Jms Broker"
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "https://elastic.co"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "docs/**/*"]

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = {
    "logstash_plugin" => "true",
    "logstash_group" => "integration",
    "integration_plugins" => "logstash-input-jms,logstash-output-jms"
  }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"
  s.add_runtime_dependency 'logstash-codec-json'
  s.add_runtime_dependency 'logstash-codec-plain'

  s.platform = RUBY_PLATFORM
  s.add_runtime_dependency "jruby-jms", ">= 1.2.0" #(Apache 2.0 license)
  s.add_development_dependency 'logstash-devutils'
end
