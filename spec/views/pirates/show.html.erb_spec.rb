require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/pirates/show.html.erb" do
  include PiratesHelper
  before(:each) do
    assigns[:pirate] = @pirate = stub_model(Pirate,
      :catchphrase => "value for catchphrase"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ catchphrase/)
  end
end

