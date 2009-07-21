require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Pirate do
  before(:each) do
    @valid_attributes = {
      :catchphrase => "value for catchphrase"
    }
  end

  it "should create a new instance given valid attributes" do
    Pirate.create!(@valid_attributes)
  end

  it 'should respond to ship' do
    p = Pirate.create!(@valid_attributes)
    p.should respond_to(:ship)
  end
end
