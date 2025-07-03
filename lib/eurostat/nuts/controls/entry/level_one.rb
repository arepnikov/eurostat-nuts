module Eurostat
  module NUTS
    module Controls
      module Entry
        module LevelOne
          def self.example(**params)
            attrs = attributes.merge(params)
            NUTS::Entry::LevelOne.new(**attrs)
          end

          def self.attributes
            { code:, labels: }
          end

          def self.code
            "ES2"
          end

          def self.label
            "Noreste"
          end

          def self.labels
            [label]
          end
        end
      end
    end
  end
end
