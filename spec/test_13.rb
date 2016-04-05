require_relative 'spec_helper'

describe Unit do
  before :each do
    @unit = Unit.new(10,1)
    @enemy = Unit.new(10,1)
  end

  it 'should be able to attack if alive' do
    expect(@unit.attack!(@enemy)).to be 9
  end

  it 'should be unable to attack if dead' do
    expect(@unit).to receive(:dead?).and_return(true)
    expect(@unit.attack!(@enemy)).to be_nil
  end

  it 'should be unable to attack a dead enemy' do
    expect(@enemy).to receive(:dead?).and_return(true)
    expect(@unit.attack!(@enemy)).to be nil
  end

end
