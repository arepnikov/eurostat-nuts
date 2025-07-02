require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      class LevelOneTest < Minitest::Test
        attr_reader :subject_entry, :code, :label, :labels

        def setup
          @code = "AB1"
          @label = "some label"
          @labels = [@label, "some other label"]

          @subject_entry = Entry::LevelOne.new(code, labels)
        end

        def test_level
          assert_equal 1, subject_entry.level
        end

        def test_code
          assert_equal code, subject_entry.code
        end

        def test_label
          assert_equal label, subject_entry.label
        end

        def test_labels
          assert_equal labels, subject_entry.labels
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
