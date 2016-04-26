class Card < ActiveRecord::Base
  belongs_to :board
  has_many :comments
  has_many :checklists
  has_many :members 
end
