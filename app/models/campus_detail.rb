class CampusDetail < ActiveRecord::Base
  attr_accessible :address, :name

  #relations
  has_many :libraries
end
