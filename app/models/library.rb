class Library < ActiveRecord::Base
  attr_accessible :name, :room, :campus_detail_id

  #relations
  has_many :bookworks
  belongs_to :campus_detail
end
