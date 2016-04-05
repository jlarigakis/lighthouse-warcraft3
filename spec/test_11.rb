require_relative 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  it 'should have 500 hp' do
    expect(@barracks.health_points).to be 500
  end

  it 'should lose 5 hp when attacked by a footman' do
    footman = Footman.new
    expect(footman.attack!(@barracks)).to be 495
    expect(@barracks.health_points).to be 495
  end
end
