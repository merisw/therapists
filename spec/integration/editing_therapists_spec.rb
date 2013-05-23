require 'spec_helper'

feature "Editing therapists" do
  before do
    Factory(:therapist, name: "Carly Soare")
    visit '/'
    click_link "Carly Soare"
    click_link "Edit Therapist"
  end

  scenario "Updating a therapist" do
    fill_in "Name", with: "Carly Sautner"
    click_button "Update Therapist"
    page.should have_content("Therapist has been updated.")
  end

  scenario "Updating a therapist with invalid attributes" do
    fill_in "Name", with: ""
    click_button "Update Therapist"
    page.should have_content("Therapist has not been updated.")
  end

end
