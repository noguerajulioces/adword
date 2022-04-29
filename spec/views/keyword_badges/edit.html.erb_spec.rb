require 'rails_helper'

RSpec.describe "keyword_badges/edit", type: :view do
  before(:each) do
    @keyword_badge = assign(:keyword_badge, KeywordBadge.create!(
      user: nil,
      keywords: "MyText"
    ))
  end

  it "renders the edit keyword_badge form" do
    render

    assert_select "form[action=?][method=?]", keyword_badge_path(@keyword_badge), "post" do

      assert_select "input[name=?]", "keyword_badge[user_id]"

      assert_select "textarea[name=?]", "keyword_badge[keywords]"
    end
  end
end
