class AddBoardtoCards < ActiveRecord::Migration
  def change
    add_reference :cards, :board, index: true
  end
end
