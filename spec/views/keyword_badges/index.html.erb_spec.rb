require 'rails_helper'

RSpec.describe "keyword_badges/index", type: :view do
  before(:each) do
    assign(:keyword_badges, [
      KeywordBadge.create!(
        user: nil,
        keywords: "MyText"
      ),
      KeywordBadge.create!(
        user: nil,
        keywords: "MyText"
      )
    ])
  end

  it "renders a list of keyword_badges" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
