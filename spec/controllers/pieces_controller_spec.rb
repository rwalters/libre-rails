require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PiecesController do

  # This should return the minimal set of attributes required to create a valid
  # Piece. As you add validations to Piece, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PiecesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all pieces as @pieces" do
      piece = Piece.create! valid_attributes
      get :index, {}, valid_session
      assigns(:pieces).should eq([piece])
    end
  end

  describe "GET show" do
    it "assigns the requested piece as @piece" do
      piece = Piece.create! valid_attributes
      get :show, {:id => piece.to_param}, valid_session
      assigns(:piece).should eq(piece)
    end
  end

  describe "GET new" do
    it "assigns a new piece as @piece" do
      get :new, {}, valid_session
      assigns(:piece).should be_a_new(Piece)
    end
  end

  describe "GET edit" do
    it "assigns the requested piece as @piece" do
      piece = Piece.create! valid_attributes
      get :edit, {:id => piece.to_param}, valid_session
      assigns(:piece).should eq(piece)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Piece" do
        expect {
          post :create, {:piece => valid_attributes}, valid_session
        }.to change(Piece, :count).by(1)
      end

      it "assigns a newly created piece as @piece" do
        post :create, {:piece => valid_attributes}, valid_session
        assigns(:piece).should be_a(Piece)
        assigns(:piece).should be_persisted
      end

      it "redirects to the created piece" do
        post :create, {:piece => valid_attributes}, valid_session
        response.should redirect_to(Piece.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved piece as @piece" do
        # Trigger the behavior that occurs when invalid params are submitted
        Piece.any_instance.stub(:save).and_return(false)
        post :create, {:piece => {}}, valid_session
        assigns(:piece).should be_a_new(Piece)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Piece.any_instance.stub(:save).and_return(false)
        post :create, {:piece => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested piece" do
        piece = Piece.create! valid_attributes
        # Assuming there are no other pieces in the database, this
        # specifies that the Piece created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Piece.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => piece.to_param, :piece => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested piece as @piece" do
        piece = Piece.create! valid_attributes
        put :update, {:id => piece.to_param, :piece => valid_attributes}, valid_session
        assigns(:piece).should eq(piece)
      end

      it "redirects to the piece" do
        piece = Piece.create! valid_attributes
        put :update, {:id => piece.to_param, :piece => valid_attributes}, valid_session
        response.should redirect_to(piece)
      end
    end

    describe "with invalid params" do
      it "assigns the piece as @piece" do
        piece = Piece.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Piece.any_instance.stub(:save).and_return(false)
        put :update, {:id => piece.to_param, :piece => {}}, valid_session
        assigns(:piece).should eq(piece)
      end

      it "re-renders the 'edit' template" do
        piece = Piece.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Piece.any_instance.stub(:save).and_return(false)
        put :update, {:id => piece.to_param, :piece => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested piece" do
      piece = Piece.create! valid_attributes
      expect {
        delete :destroy, {:id => piece.to_param}, valid_session
      }.to change(Piece, :count).by(-1)
    end

    it "redirects to the pieces list" do
      piece = Piece.create! valid_attributes
      delete :destroy, {:id => piece.to_param}, valid_session
      response.should redirect_to(pieces_url)
    end
  end

end
