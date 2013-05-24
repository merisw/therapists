require 'spec_helper'

feature "Creating therapists" do
  scenario "can create a therapist" do
    visit '/'
    click_link "New Therapist"
    fill_in "Name", with: "Carly Simon"
    fill_in "Email", with: "carly@school.com"
    fill_in "Therapist type", with: "SLP"
    fill_in "Fte", with: "1.0"
    click_button 'Create Therapist'
    page.should have_content("Therapist has been created.")
  end
end
