class Player

  attr_reader :name

  def initialize(name, lives = 3)
    @name = name
    @lives = lives
    @total_lives = lives
  end

  def reduce_life
    @lives -= 1
  end

  def is_alive
    byebug
    return @lives != 0
  end

  def current_stat
    "#{@lives}/#{@total_lives}"
  end

end