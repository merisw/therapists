class Therapist < ActiveRecord::Base
  attr_accessible :email, :fTE, :name, :therapist_type
  validates :name, :presence => true
end
