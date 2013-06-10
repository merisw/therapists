class Assignment < ActiveRecord::Base
  belongs_to :therapist
  belongs_to :school
  attr_accessible :fte, :caseload, :days, :school_id, :therapist_id
  validates :fte, :caseload, :days, :school_id, :therapist_id, presence: true
  validates :fte, :caseload, :days, numericality: true
end
