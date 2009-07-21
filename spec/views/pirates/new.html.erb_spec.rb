require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pirates/new.html.erb" do
  include PiratesHelper
  
  before(:each) do
    assigns[:pirate] = stub_model(Pirate,
      :new_record? => true,
      :catchphrase => nil,
      :ship => nil
    )
  end

  it "renders new pirate form" do
    render
    
    response.should have_tag("form[action=?][method=post]", pirates_path) do
      with_tag("input#pirate_catchphrase[name=?]", "pirate[catchphrase]")
    end
  end

  it 'renders new ship form' do
    render
    p response.body
    response.should have_tag("form[action=?][method=post]", pirates_path) do
      with_tag("input[name=?]", "pirate[ship][name]")
    end
  end
end


