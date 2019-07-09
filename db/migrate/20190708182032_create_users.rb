class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.integer :age
      t.string :height
      t.integer :weight

      t.timestamps
    end
  end
end
