class CreateDays < ActiveRecord::Migration[7.1]
  def change
    create_table :days do |t|
      t.integer :week_id
      t.integer :goal_id
      t.string :goal1
      t.string :goal2
      t.string :goal3
      t.string :entries
      t.string :day

      t.timestamps
    end
  end
end
