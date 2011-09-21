class AddConfirmationToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :confirmation, :string
  end
end
