module Eurostat
  module NUTS
    class Registry
      extend Build

      def initialize(code_registry, label_registry)
        @code_registry = code_registry
        @label_registry = label_registry
      end

      def get(code)
        @code_registry[code]
      end

      def find(label)
        normalized_label = NormalizeLabel.(label)
        @label_registry[normalized_label]
      end
    end
  end
end
