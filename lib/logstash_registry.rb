# encoding: utf-8
require "logstash/plugins/registry"
require "logstash/inputs/jms"
require "logstash/outputs/jms"

LogStash::PLUGIN_REGISTRY.add(:input, "jms", LogStash::Inputs::Jms)
LogStash::PLUGIN_REGISTRY.add(:output, "jms", LogStash::Outputs::Jms)
