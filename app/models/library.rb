class Library < ActiveRecord::Base
  attr_accessible :name, :room, :campus_detail_id

  #relations
  has_many :bookworks
  belongs_to :campus_detail

  def library_details
    [name, campus_detail.name].join(" ")
  end
end
