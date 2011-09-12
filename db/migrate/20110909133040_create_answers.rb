class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :user_id
  end
end
