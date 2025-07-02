module Eurostat
  module NUTS
    module Entry
      class LevelThree < Data.define(:code, :labels)
        def level = 3
        def label = labels.first

        def level_one_projection
          level_one_code = code[...-2]
          NUTS.get(level_one_code)
        end

        def level_two_projection
          level_two_code = code[...-1]
          NUTS.get(level_two_code)
        end

        def level_three_projection
          self
        end
      end
    end
  end
end
