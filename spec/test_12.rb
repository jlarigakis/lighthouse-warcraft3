require_relative 'spec_helper'

describe Unit do
  before :each do
    @unit = Unit.new(10,10)
  end

  it "should be alive when created" do
    expect(@unit.dead?).to be false
  end

  it "should die if its health is 0 or less" do
    expect(@unit).to receive(:health_points).and_return(0) 
    expect(@unit.dead?).to be true
    expect(@unit).to receive(:health_points).and_return(-5)
    expect(@unit.dead?).to be true
  end
end

