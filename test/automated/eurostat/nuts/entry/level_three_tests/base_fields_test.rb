require_relative '../../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      module LevelThreeTests
        class BaseFieldsTest < Minitest::Test
          attr_reader :subject_entry

          def setup
            @code = "some code"
            @label = "some label"
            @labels = [@label, "some other label"]

            @subject_entry = Entry::LevelThree.new(@code, @labels)
          end

          def test_level
            assert_equal 3, subject_entry.level
          end

          def test_code
            assert_equal @code, subject_entry.code
          end

          def test_label
            assert_equal @label, subject_entry.label
          end

          def test_labels
            assert_equal @labels, subject_entry.labels
          end
        end
      end
    end
  end
end
