require_relative 'unit'

class SiegeEngine < Unit
  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    if enemy.is_a?(Barracks)
      return super(enemy, attack_power*2)
    elsif enemy.is_a?(SiegeEngine)
      return super(enemy, attack_power)
    else
      return nil
    end
  end

end
