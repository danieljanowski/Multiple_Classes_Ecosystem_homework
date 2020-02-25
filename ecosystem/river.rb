class River

  attr_reader :name, :fishes

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def fish_count
    return @fishes.count
  end

  def fish_eaten
    # random fish eaten from the river
    @fishes.delete_at(rand(@fishes.count-1))
  end

end
