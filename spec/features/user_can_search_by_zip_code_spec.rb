require "rails_helper"

RSpec.describe "user can enter in a zip code" do
  it "returns a list of closest stations" do
    visit "/"
    fill_in :q, with: "80203"
    click_on("Locate")
    expect(current_path).to eq("/search")

    within("#UDR") do
      expect(page).to have_content("800 Acoma St")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("Miles Away: 0.3117")
      expect(page).to have_content("24 hours daily")
    end
  end
end
