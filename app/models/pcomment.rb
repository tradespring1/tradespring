class Pcomment < ActiveRecord::Base
  belongs_to :purchase
  belongs_to :user
  attr_accessible :body, :user_id
  validates :body, presence: true, length: { maximum: 140 }
  validates :purchase_id, presence: true

  


end