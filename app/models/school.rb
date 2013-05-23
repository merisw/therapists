class School < ActiveRecord::Base
  has_many :assignments
  has_many :therapists, :through => :assignments

  attr_accessible :name, :level, :address
end
