class Bear

  attr_reader :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eats(river)
    @stomach << river.fish_eaten
  end

  def food_count
    return @stomach.count
  end

  def roar
    return "ROOOOOOOAAARRRRRR!"
  end

end
