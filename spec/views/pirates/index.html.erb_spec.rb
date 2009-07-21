require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pirates/index.html.erb" do
  include PiratesHelper
  
  before(:each) do
    assigns[:pirates] = [
      stub_model(Pirate,
        :catchphrase => "value for catchphrase"
      ),
      stub_model(Pirate,
        :catchphrase => "value for catchphrase"
      )
    ]
  end

  it "renders a list of pirates" do
    render
    response.should have_tag("tr>td", "value for catchphrase".to_s, 2)
  end
end

