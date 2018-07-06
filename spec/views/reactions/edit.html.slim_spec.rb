require 'rails_helper'

RSpec.describe "reactions/edit", type: :view do
  before(:each) do
    @reaction = assign(:reaction, Reaction.create!())
  end

  it "renders the edit reaction form" do
    render

    assert_select "form[action=?][method=?]", reaction_path(@reaction), "post" do
    end
  end
end
