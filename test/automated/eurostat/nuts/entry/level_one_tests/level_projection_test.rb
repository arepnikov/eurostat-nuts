require_relative '../../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      module LevelOneTests
        class LevelProjectionTest < Minitest::Test
          attr_reader :subject_entry

          def setup
            @subject_entry = Controls::Entry::LevelOne.example
          end

          def test_level_one_projection
            expect_itsel = subject_entry
            assert_equal expect_itsel, subject_entry.level_one_projection
          end

          def test_level_two_projection
            error = assert_raises(NoMethodError) do
              subject_entry.level_two_projection
            end

            error_message = "undefined method 'level_two_projection' for an instance of Eurostat::NUTS::Entry::LevelOne"
            assert_equal error_message, error.message
          end

          def test_level_three_projection
            error = assert_raises(NoMethodError) do
              subject_entry.level_three_projection
            end

            error_message = "undefined method 'level_three_projection' for an instance of Eurostat::NUTS::Entry::LevelOne"
            assert_equal error_message, error.message
          end
        end
      end
    end
  end
end
