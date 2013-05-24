require 'spec_helper'

feature "Deleting therapists" do
  scenario "Deleting a therapist" do
    Factory(:therapist, :name => "Carly Simon")
    visit '/'
    click_link "Carly Simon"
    click_link "Delete Therapist"
    page.should have_content("Therapist has been deleted.")

    visit '/'
    page.should_not have_content("Carly Simon")
  end
end
