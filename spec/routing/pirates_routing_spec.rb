require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PiratesController do
  describe "route generation" do
    it "maps #index" do
      route_for(:controller => "pirates", :action => "index").should == "/pirates"
    end
  
    it "maps #new" do
      route_for(:controller => "pirates", :action => "new").should == "/pirates/new"
    end
  
    it "maps #show" do
      route_for(:controller => "pirates", :action => "show", :id => "1").should == "/pirates/1"
    end
  
    it "maps #edit" do
      route_for(:controller => "pirates", :action => "edit", :id => "1").should == "/pirates/1/edit"
    end

  it "maps #create" do
    route_for(:controller => "pirates", :action => "create").should == {:path => "/pirates", :method => :post}
  end

  it "maps #update" do
    route_for(:controller => "pirates", :action => "update", :id => "1").should == {:path =>"/pirates/1", :method => :put}
  end
  
    it "maps #destroy" do
      route_for(:controller => "pirates", :action => "destroy", :id => "1").should == {:path =>"/pirates/1", :method => :delete}
    end
  end

  describe "route recognition" do
    it "generates params for #index" do
      params_from(:get, "/pirates").should == {:controller => "pirates", :action => "index"}
    end
  
    it "generates params for #new" do
      params_from(:get, "/pirates/new").should == {:controller => "pirates", :action => "new"}
    end
  
    it "generates params for #create" do
      params_from(:post, "/pirates").should == {:controller => "pirates", :action => "create"}
    end
  
    it "generates params for #show" do
      params_from(:get, "/pirates/1").should == {:controller => "pirates", :action => "show", :id => "1"}
    end
  
    it "generates params for #edit" do
      params_from(:get, "/pirates/1/edit").should == {:controller => "pirates", :action => "edit", :id => "1"}
    end
  
    it "generates params for #update" do
      params_from(:put, "/pirates/1").should == {:controller => "pirates", :action => "update", :id => "1"}
    end
  
    it "generates params for #destroy" do
      params_from(:delete, "/pirates/1").should == {:controller => "pirates", :action => "destroy", :id => "1"}
    end
  end
end
