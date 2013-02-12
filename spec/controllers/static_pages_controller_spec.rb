require 'spec_helper'

describe StaticPagesController do

  describe "Home page" do
    it "should have the right header" do
      page.should have_selector('h1', text:'Home')
    end
  end

end
