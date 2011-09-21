class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.references :survey
      t.string :title
      t.string :style

      t.timestamps
    end
    add_index :sections, :survey_id
  end
end
