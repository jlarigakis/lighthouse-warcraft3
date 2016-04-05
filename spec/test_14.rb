require_relative 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  it "should start with 500 lumber" do
    expect(@barracks.lumber).to be 500
  end

end
