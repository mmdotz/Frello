class Board < ActiveRecord::Base
  belongs_to :user #scope owner is true?
  has_many   :members, class_name: "User", foreign_key: "member_id"
  has_many   :cards
end
