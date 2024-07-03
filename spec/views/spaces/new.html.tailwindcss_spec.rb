require 'rails_helper'

RSpec.describe "spaces/new", type: :view do
  before(:each) do
    assign(:space, Space.new(
      name: "MyString",
      tenant: nil,
      created_by: nil
    ))
  end

  it "renders new space form" do
    render

    assert_select "form[action=?][method=?]", spaces_path, "post" do
      assert_select "input[name=?]", "space[name]"

      assert_select "input[name=?]", "space[tenant_id]"

      assert_select "input[name=?]", "space[created_by_id]"
    end
  end
end
