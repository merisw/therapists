require 'spec_helper'

feature "Editing therapists" do
  before do
    Factory(:therapist, name: "Carly Simon")
    visit '/'
    click_link "Carly Simon"
    click_link "Edit Therapist"
  end

  scenario "Updating a therapist" do
    fill_in "Name", with: "Carly Samson"
    click_button "Update Therapist"
    page.should have_content("Therapist has been updated.")
  end

  scenario "Updating a therapist with invalid attributes" do
    fill_in "Name", with: ""
    click_button "Update Therapist"
    page.should have_content("Therapist has not been updated.")
  end

end
