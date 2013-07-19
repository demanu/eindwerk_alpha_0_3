class Loan < ActiveRecord::Base
  attr_accessible :bookwork_id, :user_id

  #relations
  belongs_to :user
  belongs_to :bookwork
end
