# http://classic.battle.net/war3/human/units/footman.shtml
require_relative 'unit'

class Footman < Unit
  @gold_cost = 135
  @food_cost = 2

  def initialize
    super(60, 10)
  end
end
