module Eurostat
  module NUTS
    module Controls
      module Entry
        module LevelThree
          def self.example(**params)
            attrs = attributes.merge(params)
            NUTS::Entry::LevelThree.new(**attrs)
          end

          def self.attributes
            { code:, labels: }
          end

          def self.code
            "ES211"
          end

          def self.label
            "Álava"
          end

          def self.labels
            [label, "Araba"]
          end
        end
      end
    end
  end
end
