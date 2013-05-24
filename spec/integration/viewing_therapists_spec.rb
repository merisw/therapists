require 'spec_helper'

feature "Viewing therapists" do
  scenario "listing all therapists" do
    therapist = Factory.create(:therapist, :name => "Carly Simon")
    visit '/'
    click_link "Carly Simon"
    page.current_url.should == therapist_url(therapist)
  end
end

