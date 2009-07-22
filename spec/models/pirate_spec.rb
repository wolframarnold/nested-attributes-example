require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Pirate do
  before(:each) do
    @valid_attributes = {
      :catchphrase => "value for catchphrase",
      :ship_attributes => {:name => "new ship"}
    }
  end

  it "should create a new instance given valid attributes" do
    Pirate.create!(@valid_attributes)
  end

  it 'should respond to ship' do
    p = Pirate.new
    p.should respond_to(:ship)
  end

  it 'should create a ship from attributes' do
    lambda {
    lambda {
      p = Pirate.create!(:catchphrase => "Hey!", :ship_attributes => {:name => 'Revenge'})
    }.should change(Pirate, :count).by(1)
    }.should change(Ship, :count).by(1)
  end

  it 'should create multiple parrots' do
    lambda {
    lambda {
      p = Pirate.create!(:catchphrase => "Hey!", :parrots_attributes => [{:name => 'Birdie1'},{:name=>'Birdie2'}])
    }.should change(Pirate, :count).by(1)
    }.should change(Parrot, :count).by(2)
  end
end
