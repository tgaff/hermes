require 'rails_helper'

RSpec.describe "channels/new", type: :view do
  before(:each) do
    assign(:channel, Channel.new(
      name: "MyString",
      channel_group: nil
    ))
  end

  it "renders new channel form" do
    render

    assert_select "form[action=?][method=?]", channels_path, "post" do
      assert_select "input[name=?]", "channel[name]"

      assert_select "input[name=?]", "channel[channel_group_id]"
    end
  end
end
