class CreateWeeks < ActiveRecord::Migration[7.1]
  def change
    create_table :weeks do |t|
      t.integer :user_id
      t.string :week

      t.timestamps
    end
  end
end
