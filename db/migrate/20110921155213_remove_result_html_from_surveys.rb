class RemoveResultHtmlFromSurveys < ActiveRecord::Migration
  def change
    remove_column :surveys, :result_html
  end
end
