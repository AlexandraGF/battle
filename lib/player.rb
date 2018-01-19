
class Player

  attr_reader :name, :points

  POINTS = 100
  DAMAGE = 10


  def initialize(name, points = POINTS )
    @name = name
    @points = points
  end

  # def attack(player)
  #   player.damage
  # end

  def damage
    @points -= [10, 20, 30].sample
  end

end
