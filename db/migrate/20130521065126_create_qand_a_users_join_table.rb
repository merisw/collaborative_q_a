class CreateQandAUsersJoinTable < ActiveRecord::Migration
  def change
    create_table :q_and_as_users, :id => false do |t|
      t.integer :q_and_a_id
      t.integer :user_id
    end
  end
end
