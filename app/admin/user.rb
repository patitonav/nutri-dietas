ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :name,  :last_name
  index do
    selectable_column
    id_column
    column :email
    column :name
    column :last_name
    actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :name
      f.input :last_name
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
    end
    f.actions
  end

end