require_relative 'footman'
require_relative 'peasant'
class Barracks
  attr_reader :gold, :food, :health_points
  def initialize
    @health_points = 500
    @gold = 1000
    @food = 80
  end

  def damage(ap)
    @health_points -= (ap.to_f / 2).ceil
  end

  def train(unit)
    @gold -= unit.gold_cost
    @food -= unit.food_cost
    unit.new
  end
  
  def train_footman
    return nil unless can_train_footman?
    train Footman
  end

  def train_peasant
    return nil unless can_train_peasant?
    train Peasant
  end

  def can_train_unit?(unit)
    gold >= unit.gold_cost && food >= unit.food_cost
  end

  def can_train_footman?
    can_train_unit? Footman
  end

  def can_train_peasant?
    can_train_unit? Peasant
  end
end
