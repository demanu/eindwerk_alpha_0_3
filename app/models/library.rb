class Library < ActiveRecord::Base
  attr_accessible :name, :room, :campus_detail_id

  #relations
  has_many :bookworks
  belongs_to :campus_detail

  public
  def library_details
    [name, campus_detail.name].join(" in ")
  end
end
