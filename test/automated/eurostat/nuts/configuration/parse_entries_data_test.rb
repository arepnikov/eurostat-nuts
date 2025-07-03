require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module Configuration
      class ParseEntriesDataTest < Minitest::Test
        def test_parsing_raw_nuts_data
          raw_nuts_data = Controls::NUTSEntries::RawData.example
          expected_nuts_entries = Controls::NUTSEntries.example

          parsed_nuts_entries = ParseEntriesData.(raw_nuts_data)
          assert_equal expected_nuts_entries, parsed_nuts_entries
        end
      end
    end
  end
end
