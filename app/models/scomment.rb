class Scomment < ActiveRecord::Base
  belongs_to :sale
  belongs_to :user
  attr_accessible :body
  validates :body, presence: true, length: { maximum: 140 }
  
end