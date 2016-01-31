ActiveAdmin.register Banner do

  permit_params :title, :description, :image

  index do
    selectable_column
    id_column
    column :title
    column :image do |img|
      image_tag(img.image.url(:medium), width: 100) if img.image.present?
    end

    column :created_at
    column :updated_at
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :image, :as => :file
      f.input :link, as: :url, placeholder: 'http://', hint: 'Link to where the banner should point.'
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :image do |img|
        image_tag(img.image.url(:thumb))
      end
      row :link
      row :created_at
      row :updated_at
    end
  end

end
