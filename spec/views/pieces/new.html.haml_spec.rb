require 'spec_helper'

describe "pieces/new" do
  before(:each) do
    assign(:piece, stub_model(Piece,
      :title => "MyString",
      :blurb => "MyString",
      :body => "MyText"
    ).as_new_record)
  end

  it "renders new piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pieces_path, :method => "post" do
      assert_select "input#piece_title", :name => "piece[title]"
      assert_select "input#piece_blurb", :name => "piece[blurb]"
      assert_select "textarea#piece_body", :name => "piece[body]"
    end
  end
end
