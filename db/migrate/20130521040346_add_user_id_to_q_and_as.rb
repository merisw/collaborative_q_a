class AddUserIdToQAndAs < ActiveRecord::Migration
  def change
    add_column :q_and_as, :user_id, :integer
    add_index :q_and_as, :user_id
  end
end
