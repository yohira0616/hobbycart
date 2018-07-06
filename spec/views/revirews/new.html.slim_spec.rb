require 'rails_helper'

RSpec.describe "revirews/new", type: :view do
  before(:each) do
    assign(:revirew, Revirew.new())
  end

  it "renders new revirew form" do
    render

    assert_select "form[action=?][method=?]", revirews_path, "post" do
    end
  end
end
