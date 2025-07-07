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

    def self.get_label(code)
      registry.get(code)&.label
    end

    def self.find_code(label)
      registry.find(label)&.code
    end

    def self.find_code_for_level(label, level)
      entry = registry.find(label)

      projection_method =
        case level
        when 1 then :level_one_projection
        when 2 then :level_two_projection
        when 3 then :level_three_projection
        end

      return nil unless projection_method && entry.respond_to?(projection_method)

      projected_entry = entry.public_send(projection_method)
      projected_entry&.code
    end
  end
end
