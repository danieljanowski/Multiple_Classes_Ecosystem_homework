require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')


class TestFish < Minitest::Test

  def setup
    @fish1 = Fish.new("cod")
  end

  def test_fish_name
    assert_equal("cod", @fish1.name)
  end

end
