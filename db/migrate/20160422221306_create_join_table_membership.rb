class CreateJoinTableMembership < ActiveRecord::Migration
  def change
    create_join_table :users, :boards, table_name: :categorization do |t|
      t.index :user_id
      t.index :board_id
    end
  end
end

#20160422221306
