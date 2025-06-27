require_relative 'automated_init'

class HealthTest < Minitest::Test
  def test_health
    assert_equal Eurostat::NUTS.heartbeat, "I'm alive"
  end
end
