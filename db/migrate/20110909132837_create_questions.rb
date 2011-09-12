class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :survey
      t.text :content
      t.string :type

      t.timestamps
    end
    add_index :questions, :survey_id
  end
end
