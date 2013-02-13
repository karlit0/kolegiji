require 'spec_helper'

describe "kolegijs/index" do
  before(:each) do
    assign(:kolegijs, [
      stub_model(Kolegij,
        :ime => "Ime",
        :ocjena => 1
      ),
      stub_model(Kolegij,
        :ime => "Ime",
        :ocjena => 1
      )
    ])
  end

  it "renders a list of kolegijs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ime".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
