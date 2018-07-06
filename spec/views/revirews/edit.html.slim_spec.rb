require 'rails_helper'

RSpec.describe "revirews/edit", type: :view do
  before(:each) do
    @revirew = assign(:revirew, Revirew.create!())
  end

  it "renders the edit revirew form" do
    render

    assert_select "form[action=?][method=?]", revirew_path(@revirew), "post" do
    end
  end
end
