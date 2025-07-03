require_relative '../../../automated_init'

module Eurostat
  module NUTS
    module Entry
      class BuildTest < Minitest::Test
        def code = "some code"
        def labels = ["some label", "some other label"]

        def test_when_level_one
          built_entry = Entry.build(code:, labels:, level: 1)
          expected_entry = Entry::LevelOne.new(code, labels)

          assert_equal expected_entry, built_entry
        end

        def test_when_level_two
          built_entry = Entry.build(code:, labels:, level: 2)
          expected_entry = Entry::LevelTwo.new(code, labels)

          assert_equal expected_entry, built_entry
        end

        def test_when_level_three
          built_entry = Entry.build(code:, labels:, level: 3)
          expected_entry = Entry::LevelThree.new(code, labels)

          assert_equal expected_entry, built_entry
        end
      end
    end
  end
end
