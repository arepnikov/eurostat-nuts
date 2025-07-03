module Eurostat
  module NUTS
    class Registry
      module NormalizeLabel
        def self.call(label)
          label
            .then(&method(:to_ascii))
            .then(&method(:alphanumeric_only))
            .then(&method(:snake_case))
        end

        def self.to_ascii(str)
          I18n.transliterate(str)
        end

        def self.alphanumeric_only(str)
          alphanumeric = str.gsub(/[_\W]/, ' ')
          alphanumeric.strip
        end

        def self.snake_case(str)
          underlined = str.gsub(/\s+/, '_')
          underlined.downcase
        end
      end
    end
  end
end
