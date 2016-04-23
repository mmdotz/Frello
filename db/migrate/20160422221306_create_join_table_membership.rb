class CreateJoinTableMembership < ActiveRecord::Migration
  def change
    create_join_table :users, :boards, table_name: :membership do |t|
      t.index :user_id
      t.index :board_id
      t.boolean :owner, default: false
    end
  end
end

#20160422221306
