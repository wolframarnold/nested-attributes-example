require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe PiratesController do

  def mock_pirate(stubs={})
    @mock_pirate ||= mock_model(Pirate, stubs)
  end
  
  describe "GET index" do
    it "assigns all pirates as @pirates" do
      Pirate.stub!(:find).with(:all).and_return([mock_pirate])
      get :index
      assigns[:pirates].should == [mock_pirate]
    end
  end

  describe "GET show" do
    it "assigns the requested pirate as @pirate" do
      Pirate.stub!(:find).with("37").and_return(mock_pirate)
      get :show, :id => "37"
      assigns[:pirate].should equal(mock_pirate)
    end
  end

  describe "GET new" do
    it "assigns a new pirate as @pirate" do
      Pirate.stub!(:new).and_return(mock_pirate)
      get :new
      assigns[:pirate].should equal(mock_pirate)
    end
  end

  describe "GET edit" do
    it "assigns the requested pirate as @pirate" do
      Pirate.stub!(:find).with("37").and_return(mock_pirate)
      get :edit, :id => "37"
      assigns[:pirate].should equal(mock_pirate)
    end
  end

  describe "POST create" do
    
    describe "with valid params" do
      it "assigns a newly created pirate as @pirate" do
        Pirate.stub!(:new).with({'these' => 'params'}).and_return(mock_pirate(:save => true))
        post :create, :pirate => {:these => 'params'}
        assigns[:pirate].should equal(mock_pirate)
      end

      it "redirects to the created pirate" do
        Pirate.stub!(:new).and_return(mock_pirate(:save => true))
        post :create, :pirate => {}
        response.should redirect_to(pirate_url(mock_pirate))
      end
    end
    
    describe "with invalid params" do
      it "assigns a newly created but unsaved pirate as @pirate" do
        Pirate.stub!(:new).with({'these' => 'params'}).and_return(mock_pirate(:save => false))
        post :create, :pirate => {:these => 'params'}
        assigns[:pirate].should equal(mock_pirate)
      end

      it "re-renders the 'new' template" do
        Pirate.stub!(:new).and_return(mock_pirate(:save => false))
        post :create, :pirate => {}
        response.should render_template('new')
      end
    end
    
  end

  describe "PUT update" do
    
    describe "with valid params" do
      it "updates the requested pirate" do
        Pirate.should_receive(:find).with("37").and_return(mock_pirate)
        mock_pirate.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pirate => {:these => 'params'}
      end

      it "assigns the requested pirate as @pirate" do
        Pirate.stub!(:find).and_return(mock_pirate(:update_attributes => true))
        put :update, :id => "1"
        assigns[:pirate].should equal(mock_pirate)
      end

      it "redirects to the pirate" do
        Pirate.stub!(:find).and_return(mock_pirate(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(pirate_url(mock_pirate))
      end
    end
    
    describe "with invalid params" do
      it "updates the requested pirate" do
        Pirate.should_receive(:find).with("37").and_return(mock_pirate)
        mock_pirate.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pirate => {:these => 'params'}
      end

      it "assigns the pirate as @pirate" do
        Pirate.stub!(:find).and_return(mock_pirate(:update_attributes => false))
        put :update, :id => "1"
        assigns[:pirate].should equal(mock_pirate)
      end

      it "re-renders the 'edit' template" do
        Pirate.stub!(:find).and_return(mock_pirate(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end
    
  end

  describe "DELETE destroy" do
    it "destroys the requested pirate" do
      Pirate.should_receive(:find).with("37").and_return(mock_pirate)
      mock_pirate.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "redirects to the pirates list" do
      Pirate.stub!(:find).and_return(mock_pirate(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(pirates_url)
    end
  end

end
