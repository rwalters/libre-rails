require 'spec_helper'

describe "pieces/index" do
  before(:each) do
    assign(:pieces, [
      stub_model(Piece,
        :title => "Title",
        :blurb => "Blurb",
        :body => "MyText"
      ),
      stub_model(Piece,
        :title => "Title",
        :blurb => "Blurb",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of pieces" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Blurb".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
