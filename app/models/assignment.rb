class Assignment < ActiveRecord::Base
  belongs_to :therapist
  belongs_to :school
  attr_accessible :fte, :caseload, :days
end
