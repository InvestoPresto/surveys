class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question
      t.text :content

      t.timestamps
    end
    add_index :choices, :question_id
  end
end
