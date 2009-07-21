require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pirates/edit.html.erb" do
  include PiratesHelper
  
  before(:each) do
    assigns[:pirate] = @pirate = stub_model(Pirate,
      :new_record? => false,
      :catchphrase => "value for catchphrase"
    )
  end

  it "renders the edit pirate form" do
    render
    
    response.should have_tag("form[action=#{pirate_path(@pirate)}][method=post]") do
      with_tag('input#pirate_catchphrase[name=?]', "pirate[catchphrase]")
    end
  end
end


