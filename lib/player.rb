class Player
  DEFAULT_HIT_POINTS = 80
  attr_reader :name, :hit_points
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def attack(player)
    player.received_hit
  end
  def received_hit
    @hit_points -= 10
  end
end
