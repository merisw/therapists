class Therapist < ActiveRecord::Base
  has_many :assignments
  has_many :schools, :through => :assignments

  attr_accessible :email, :fTE, :name, :therapist_type
  validates :name, :presence => true
end
