require 'rails_helper'

RSpec.describe "revirews/index", type: :view do
  before(:each) do
    assign(:revirews, [
      Revirew.create!(),
      Revirew.create!()
    ])
  end

  it "renders a list of revirews" do
    render
  end
end
