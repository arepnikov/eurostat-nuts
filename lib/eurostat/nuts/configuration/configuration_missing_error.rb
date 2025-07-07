module Eurostat
  module NUTS
    module Configuration
      class ConfigurationMissingError < RuntimeError
        def message
          "Configuration required. Use 'Eurostat::NUTS.configure'."
        end
      end
    end
  end
end
