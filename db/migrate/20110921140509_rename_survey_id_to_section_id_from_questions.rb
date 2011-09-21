class RenameSurveyIdToSectionIdFromQuestions < ActiveRecord::Migration
  class Survey < ActiveRecord::Base
  end
  class Section < ActiveRecord::Base
  end
  def change
    rename_column :questions, :survey_id, :section_id
    Survey.all.each { |survey| Section.create(:id => survey.id, :survey_id => survey.id) }
  end
end
