require 'spec_helper'

describe "kolegijs/edit" do
  before(:each) do
    @kolegij = assign(:kolegij, stub_model(Kolegij,
      :ime => "MyString",
      :ocjena => 1
    ))
  end

  it "renders the edit kolegij form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => kolegijs_path(@kolegij), :method => "post" do
      assert_select "input#kolegij_ime", :name => "kolegij[ime]"
      assert_select "input#kolegij_ocjena", :name => "kolegij[ocjena]"
    end
  end
end
