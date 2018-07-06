require 'rails_helper'

RSpec.describe "reactions/show", type: :view do
  before(:each) do
    @reaction = assign(:reaction, Reaction.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
