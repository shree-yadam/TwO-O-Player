class Player

  attr_reader :name, :pet_name

  def initialize(name, pet_name = name, lives = 3)
    @name = name
    @pet_name = pet_name
    @lives = lives
    @total_lives = lives
  end

  # method to reduce lives by 1
  def reduce_life
    if @lives > 0
      @lives -= 1
    end
  end

  # method to check if player is alive
  def alive?
    @lives != 0
  end

  # method returns current stats of player
  def current_stat
    "#{@lives}/#{@total_lives}"
  end

end
