require_relative 'automated_init'

class HealthTest < Minitest::Test
  def test_x_is_five
    assert_equal Eurostat::NUTS.heartbeat, "I'm alive"
  end
end
