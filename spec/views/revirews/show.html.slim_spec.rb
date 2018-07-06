require 'rails_helper'

RSpec.describe "revirews/show", type: :view do
  before(:each) do
    @revirew = assign(:revirew, Revirew.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
