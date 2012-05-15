require 'spec_helper'

describe "pieces/show" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :title => "Title",
      :blurb => "Blurb",
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Blurb/)
    rendered.should match(/MyText/)
  end
end
