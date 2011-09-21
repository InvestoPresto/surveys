ActiveAdmin.register Answer do
  filter :question, :collection => proc { Hash[*Question.all.map { |q| [q.content, q.id] }.flatten] }
  filter :user

  index do
    column :user
    column ("Question") { |answer| answer.question.content }
    column :content
    default_actions
  end
end
