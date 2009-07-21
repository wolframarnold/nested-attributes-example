require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Ship do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :pirate => Pirate.create!(:catchphrase => "yozo")
    }
  end

  it "should create a new instance given valid attributes" do
    Ship.create!(@valid_attributes)
  end

  it 'should response to pirate' do
    s = Ship.create!(@valid_attributes)
    s.should respond_to(:pirate)
  end
end
