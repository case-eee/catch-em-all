require 'rails_helper'

RSpec.feature "UserCapturePokemons", type: :feature do
  scenario "displays capture message and backpack content" do
    Pokemon.create!(
      name: "Pikachu",
      image_url: "http://core.dawnolmo.com/50_pokemon__9_pikachu_by_megbeth-d5fga3f_original.png"
    )

    visit root_path

    expect(page).to have_content("Backpack: 0")

    click_button "Capture"

    expect(page).to have_content("You now have 1 Pikachu.")
    expect(page).to have_content("Backpack: 1")

    click_button "Capture"

    expect(page).to have_content("You now have 2 Pikachus.")
    expect(page).to have_content("Backpack: 2")
  end
end
