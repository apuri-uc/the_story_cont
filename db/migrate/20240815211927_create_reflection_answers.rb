class CreateReflectionAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :reflection_answers do |t|
      t.integer :reflection_question_id
      t.integer :user_id
      t.integer :week_id
      t.string :answer
      t.string :question

      t.timestamps
    end
  end
end
