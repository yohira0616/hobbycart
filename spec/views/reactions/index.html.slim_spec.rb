require 'rails_helper'

RSpec.describe "reactions/index", type: :view do
  before(:each) do
    assign(:reactions, [
      Reaction.create!(),
      Reaction.create!()
    ])
  end

  it "renders a list of reactions" do
    render
  end
end
