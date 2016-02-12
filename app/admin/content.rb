ActiveAdmin.register Content do

  permit_params :title, :content, :image

  index do
    selectable_column
    id_column
    column :title
    column :image do |img|
      image_tag(img.image.url(:thumb), width: 30) if img.image.present?
    end

    column :created_at
    column :updated_at
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :content
      f.input :image, :as => :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :content
      row :slug
      row :image do |img|
        image_tag(img.image.url(:medium)) if img.image.present?
      end
      row :created_at
      row :updated_at
    end
  end

end
