class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  #relations
  has_many :loans
  has_many :bookworks, :through => :loans

  #dinge
  def full_name
    [first_name,last_name].join(" ")
  end
end
