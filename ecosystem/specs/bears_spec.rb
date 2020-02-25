require ('minitest/autorun')
require ('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')
require_relative('../bears')


class TestBear < Minitest::Test

  def setup
    @bear1 = Bear.new("Yogi","Brown Bear")
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

  def test_bear_name
    assert_equal("Yogi", @bear1.name)
  end

  def test_bear_type
    assert_equal("Brown Bear", @bear1.type)
  end

  def test_empty_stomach
    assert_equal(0, @bear1.stomach.count)
  end

  def test_bear_eats
    @bear1.eats(@river1)
    assert_equal(1, @bear1.food_count)
    assert_equal(8, @river1.fish_count)
  end

  def test_roar
    assert_equal("ROOOOOOOAAARRRRRR!", @bear1.roar)
  end

  def test_food_count
    assert_equal(0, @bear1.food_count)
  end

end
