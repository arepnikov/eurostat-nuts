require_relative '../../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      module LevelThreeTests
        class LevelProjectionTest < Minitest::Test
          module StubNUTSGet
            def self.call(code)
              case code
              when "AB1"  then Controls::Entry::LevelOne.example(code: "AB1")
              when "AB12" then Controls::Entry::LevelTwo.example(code: "AB12")
              end
            end
          end

          attr_reader :subject_entry

          def setup
            @subject_entry = Controls::Entry::LevelThree.example(code: "AB123")
          end

          def test_level_one_projection
            Eurostat::NUTS.stub(:get, StubNUTSGet) do
              expected_entry = Controls::Entry::LevelOne.example(code: "AB1")
              assert_equal expected_entry, subject_entry.level_one_projection
            end
          end

          def test_level_two_projection
            Eurostat::NUTS.stub(:get, StubNUTSGet) do
              expected_entry = Controls::Entry::LevelTwo.example(code: "AB12")
              assert_equal expected_entry, subject_entry.level_two_projection
            end
          end

          def test_level_three_projection
            expect_itself = subject_entry
            assert_equal expect_itself, subject_entry.level_three_projection
          end
        end
      end
    end
  end
end
