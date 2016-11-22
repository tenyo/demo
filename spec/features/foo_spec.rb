require "spec_helper"

describe "/foo", type: :feature do
  it "works" do
    visit "/foo"
    expect(page).to have_content("This is tested")
  end
end
