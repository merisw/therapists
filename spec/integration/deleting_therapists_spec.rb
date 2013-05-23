require 'spec_helper'

feature "Deleting therapists" do
  scenario "Deleting a therapist" do
    Factory(:therapist, :name => "Carly Soare")
    visit '/'
    click_link "Carly Soare"
    click_link "Delete Therapist"
    page.should have_content("Therapist has been deleted.")

    visit '/'
    page.should_not have_content("Carly Soare")
  end
end
