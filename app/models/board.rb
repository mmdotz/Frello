class Board < ActiveRecord::Base
  belongs_to :user
  has_many   :memberships #join
  has_many   :cards

  validates_associated          :cards
  validates                     :user_id, presence: true
end
