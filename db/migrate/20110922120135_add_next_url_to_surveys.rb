class AddNextUrlToSurveys < ActiveRecord::Migration
  class Survey < ActiveRecord::Base
  end
  def change
    add_column :surveys, :next_url, :string
    Survey.all.each {|survey| survey.update_attribute(:next_url, "/surveys/#{survey.id + 1}") }
  end
end
