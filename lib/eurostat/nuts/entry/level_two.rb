module Eurostat
  module NUTS
    module Entry
      class LevelTwo < Data.define(:code, :labels)
        def level = 2
        def label = labels.first

        def level_one_projection
          level_one_code = code[...-1]
          NUTS.registry.get(level_one_code)
        end

        def level_two_projection
          self
        end
      end
    end
  end
end
