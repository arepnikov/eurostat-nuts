module Eurostat
  module NUTS
    module Configure
      class Parse
        Result = Data.define(:level_one, :level_two, :level_three)

        def self.call(data)
          new.call(data)
        end

        def call(data)
          # TODO
        end
      end
    end
  end
end
