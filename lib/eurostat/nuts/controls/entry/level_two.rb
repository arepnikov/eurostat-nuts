module Eurostat
  module NUTS
    module Controls
      module Entry
        module LevelTwo
          def self.example(**params)
            attrs = attributes.merge(params)
            NUTS::Entry::LevelTwo.new(**attrs)
          end

          def self.attributes
            { code:, labels: }
          end

          def self.code
            "ES21"
          end

          def self.label
            "País Vasco"
          end

          def self.labels
            [label]
          end
        end
      end
    end
  end
end
