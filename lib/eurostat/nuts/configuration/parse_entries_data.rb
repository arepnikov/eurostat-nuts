module Eurostat
  module NUTS
    module Configuration
      class ParseEntriesData
        def self.call(data)
          new.call(data)
        end

        def call(data)
          nuts_data = flatten_countries_data(data)

          normalized_nuts_data = nuts_data.flat_map(&method(:normalize_nuts_data))
          entries = normalized_nuts_data.map(&method(:build_entry))
          entries
        end

        private

        def flatten_countries_data(data)
          data.flat_map { |_country_code, country_nuts_data| country_nuts_data }
        end

        def normalize_nuts_data(country_nuts_data)
          country_nuts_data.map do |nuts_code, details|
            level, label = details.values_at('level', 'label')

            {
              code: nuts_code,
              level: level,
              labels: Array(label)
            }
          end
        end

        def build_entry(nuts_data)
          NUTS::Entry.build(**nuts_data)
        end
      end
    end
  end
end
