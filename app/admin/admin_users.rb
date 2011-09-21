ActiveAdmin.register AdminUser do
  form do |f|
    f.inputs "User" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
