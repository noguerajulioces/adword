require 'rails_helper'

RSpec.describe "keyword_badges/show", type: :view do
  before(:each) do
    @keyword_badge = assign(:keyword_badge, KeywordBadge.create!(
      user: nil,
      keywords: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
