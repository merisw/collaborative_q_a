class CreateQAndAs < ActiveRecord::Migration
  def change
    create_table :q_and_as do |t|
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
