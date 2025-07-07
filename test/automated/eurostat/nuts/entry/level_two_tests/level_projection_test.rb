require_relative '../../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      module LevelTwoTests
        class LevelProjectionTest < Minitest::Test
          module StubNUTSRegistry
            def self.get(code)
              case code
              when "AB1"  then Controls::Entry::LevelOne.example(code: "AB1")
              end
            end
          end

          attr_reader :subject_entry

          def setup
            @subject_entry = Controls::Entry::LevelTwo.example(code: "AB12")
          end

          def test_level_one_projection
            Eurostat::NUTS.stub(:registry, StubNUTSRegistry) do
              expected_entry = Controls::Entry::LevelOne.example(code: "AB1")
              assert_equal expected_entry, subject_entry.level_one_projection
            end
          end

          def test_level_two_projection
            expect_itself = subject_entry
            assert_equal expect_itself, subject_entry.level_two_projection
          end

          def test_level_three_projection
            error = assert_raises(NoMethodError) do
              subject_entry.level_three_projection
            end

            error_message = "undefined method 'level_three_projection' for an instance of Eurostat::NUTS::Entry::LevelTwo"
            assert_equal error_message, error.message
          end
        end
      end
    end
  end
end
