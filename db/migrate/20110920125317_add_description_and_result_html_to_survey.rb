class AddDescriptionAndResultHtmlToSurvey < ActiveRecord::Migration
  def change
    add_column :surveys, :description, :text
    add_column :surveys, :result_html, :text
  end
end
