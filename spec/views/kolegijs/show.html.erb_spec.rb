require 'spec_helper'

describe "kolegijs/show" do
  before(:each) do
    @kolegij = assign(:kolegij, stub_model(Kolegij,
      :ime => "Ime",
      :ocjena => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ime/)
    rendered.should match(/1/)
  end
end
