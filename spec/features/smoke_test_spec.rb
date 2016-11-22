require "spec_helper"

describe "Smoke test", type: :feature do
  it "works" do
    visit "/"
    expect(page).to have_content("Hello Yale!")
  end
end
