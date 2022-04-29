require 'rails_helper'

RSpec.describe "keyword_badges/new", type: :view do
  before(:each) do
    assign(:keyword_badge, KeywordBadge.new(
      user: nil,
      keywords: "MyText"
    ))
  end

  it "renders new keyword_badge form" do
    render

    assert_select "form[action=?][method=?]", keyword_badges_path, "post" do

      assert_select "input[name=?]", "keyword_badge[user_id]"

      assert_select "textarea[name=?]", "keyword_badge[keywords]"
    end
  end
end
