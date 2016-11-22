require "spec_helper"

describe "/bar", type: :feature do
  it "works" do
    visit "/bar"
    expect(page).to have_content("Bar is here")
  end
end
