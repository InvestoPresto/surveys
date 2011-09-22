ActiveAdmin.register Survey do
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :confirmation
      f.input :next_url
    end

    f.has_many :sections do |s|
      s.input :title
      s.input :style, :collection => %w(default matrix)
      s.has_many :questions do |q|
        q.input :content, :label => "Question"
        q.has_many :choices do |c|
          c.input :content, :as => :string, :label => "Choice"
        end
      end
    end

    f.buttons
  end
end
