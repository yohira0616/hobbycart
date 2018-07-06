require 'rails_helper'

RSpec.describe "reactions/new", type: :view do
  before(:each) do
    assign(:reaction, Reaction.new())
  end

  it "renders new reaction form" do
    render

    assert_select "form[action=?][method=?]", reactions_path, "post" do
    end
  end
end
