require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module Configure
      class ParseTest < Minitest::Test
        def test_parsing_raw_nuts_data
          raw_nuts_data = Controls::NUTSData::Raw.example
          expected_parsed_nuts_data = Controls::NUTSData.example

          parsed_nuts_data = Parse.(raw_nuts_data)
          assert_equal expected_parsed_nuts_data, parsed_nuts_data
        end
      end
    end
  end
end
