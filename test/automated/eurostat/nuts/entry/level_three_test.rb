require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      class LevelThreeTest < Minitest::Test
        module MockRegister
          def self.get(code)
            case code
            when "AB1"  then Controls::Entry::LevelOne.example(code: "AB1")
            when "AB12" then Controls::Entry::LevelTwo.example(code: "AB12")
            end
          end
        end

        attr_reader :subject_entry, :code, :label, :labels

        def setup
          @code = "AB123"
          @label = "some label"
          @labels = [@label, "some other label"]

          @subject_entry = Entry::LevelThree.new(code, labels)
        end

        def test_level
          assert_equal 3, subject_entry.level
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
          Eurostat::NUTS.stub(:registry, MockRegister) do
            projected_entry = Controls::Entry::LevelOne.example(code: 'AB1')
            assert_equal projected_entry, subject_entry.level_one_projection
          end
        end

        def test_level_two_projection
          Eurostat::NUTS.stub(:registry, MockRegister) do
            projected_entry = Controls::Entry::LevelTwo.example(code: 'AB12')
            assert_equal projected_entry, subject_entry.level_two_projection
          end
        end

        def test_level_three_projection
          expect_itsel = subject_entry
          assert_equal expect_itsel, subject_entry.level_three_projection
        end
      end
    end
  end
end
