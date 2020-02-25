require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')


class TestRiver < Minitest::Test

  def setup
    @fish1  = Fish.new("cod")
    @fish2  = Fish.new("bass")
    @fish3  = Fish.new("plaice")
    @fish4  = Fish.new("turbot")
    @fish5  = Fish.new("brill")
    @fish6  = Fish.new("pollack")
    @fish7  = Fish.new("black bream")
    @fish8  = Fish.new("mackerel")
    @fish9  = Fish.new("rays")
    @fishes = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6, @fish7, @fish8, @fish9]

    @river1 = River.new("Amazon", @fishes)
  end

  def test_river_name
    assert_equal("Amazon", @river1.name)
  end

  def test_fish_eaten
    @river1.fish_eaten
    assert_equal(8, @river1.fish_count)
  end

  def test_fish_count
    assert_equal(9, @river1.fish_count)
  end

end
