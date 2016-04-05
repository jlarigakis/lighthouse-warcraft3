require_relative 'spec_helper'

describe SiegeEngine do
  before :each do
    @se = SiegeEngine.new
  end

  it "should do 100 damage to a Barracks" do
    barracks = Barracks.new
    health = barracks.health_points
    expect(barracks.dead?).to be false
    expect(@se.dead?).to be false
    expect(@se.attack!(barracks)).to eq(health - 100)
  end
  it "should do 50 damage to a Siege Engine" do
    enemy = SiegeEngine.new
    health = enemy.health_points
    expect(@se.attack!(enemy)).to be (health - 50)
  end
  it "should be unable to attack Peasants" do
    enemy = Peasant.new
    health = enemy.health_points
    expect(@se.attack!(enemy)).to be_nil
  end
end
