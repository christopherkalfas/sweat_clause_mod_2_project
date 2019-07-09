class CreatePledges < ActiveRecord::Migration[5.2]
  def change
    create_table :pledges do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :charity_id

      t.timestamps
    end
  end
end
