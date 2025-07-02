module Eurostat
  module NUTS
    module Entry
      def self.build(code:, labels:, level:)
        entry_cls =
          case level
          when 1 then LevelOne
          when 2 then LevelTwo
          when 3 then LevelThree
          end

        entry_cls.new(code, labels)
      end
    end
  end
end
