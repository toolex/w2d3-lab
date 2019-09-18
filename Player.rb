class Player

  attr_reader(:name, :lives)

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def player_loses_life
    @lives -= 1
  end

end
