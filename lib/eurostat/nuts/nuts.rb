module Eurostat
  module NUTS
    def self.configure(nuts_data)
      nuts_entries = Configuration::ParseEntriesData.(nuts_data)
      @registry = Registry.build(nuts_entries)
    end

    def self.registry
      raise Configuration::ConfigurationMissingError unless instance_variable_defined?(:@registry)

      @registry
    end

    def self.get(code)
      'not_implemented'
    end

    def self.find(label)
      'not_implemented'
    end

    def self.find_for_level(label, level)
      'not_implemented'
    end
  end
end
