class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :activity
      t.integer :activity_reps
      t.date :start_date
      t.date :end_date
      t.integer :group_id
      t.integer :charity_id

      t.timestamps
    end
  end
end
