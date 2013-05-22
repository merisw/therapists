require 'spec_helper'

feature "Viewing therapists" do
  scenario "listing all therapists" do
    therapist = Factory.create(:therapist, :name => "Carly Soare")
    visit '/'
    click_link "Carly Soare"
    page.current_url.should == therapist_url(therapist)
  end
end

