class Unit
  class << self 
    attr_accessor :food_cost, :gold_cost
  end

  attr_reader :health_points, :attack_power

  def dead?
    health_points <= 0
  end

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(points)
    @health_points -= points
  end
end
