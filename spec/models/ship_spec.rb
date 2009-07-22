require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Ship do
  before(:each) do
    @valid_attributes = {
      :name => "value for name", :pirate => Pirate.create!(:catchphrase => "new pirate")
    }
  end

  it "should create a new instance given valid attributes" do
    Ship.create!(@valid_attributes)
  end

  it 'should respond to pirate' do
    s = Ship.new
    s.should respond_to(:pirate)
  end

  it 'should not make a ship without a name' do
    s = Ship.new
    s.should_not be_valid
  end

  it 'should not permit a ship without a pirate' do
    s = Ship.new(:name => 'name')
    s.should_not be_valid
    s.errors[:pirate].should_not be_empty
  end
end
