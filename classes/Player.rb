class Player

  attr_accessor :lives, :title

  def initialize(lives, num)
    @lives = lives
    @title = "Player #{num}"
  end

  def lose_life()
    @lives -= 1
  end

end