require 'spec_helper'

feature "Creating Schools" do
  scenario "Create a school" do
    visit '/'
    click_link "New School"
    fill_in "Name", with: "Roosevelt"
    fill_in "Level", with: "High"
    fill_in "Caseload", with: "30"
    click_button "Create School"
    page.should have_content("School has been created.")
  end
end
