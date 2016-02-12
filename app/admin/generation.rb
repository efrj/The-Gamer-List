ActiveAdmin.register Generation do

  permit_params :name, :starting_year, :period, :description

  index do
    selectable_column
    id_column
    column :name
    column :generate
    column :created_at
    column :updated_at
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :starting_year, as: :datepicker
      f.input :period
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :description
      row :starting_year
      row :period
      row :created_at
      row :updated_at
    end
  end

end
