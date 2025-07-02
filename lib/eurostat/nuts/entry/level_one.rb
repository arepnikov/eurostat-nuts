module Eurostat
  module NUTS
    module Entry
      class LevelOne < Data.define(:code, :labels)
        def level = 1
        def label = labels.first

        def level_one_projection
          self
        end
      end
    end
  end
end
