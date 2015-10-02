ActiveAdmin.register Game do


  permit_params :title, :description, :genre_id, :softhouse_id, :platform_id, :image

  index do
    selectable_column
    id_column
    column :title
    column :softhouse
    column :platform
    column :image do |c|
      image_tag(c.image.url(:thumb), width: 30) if c.image.present?
    end


    column :created_at
    column :updated_at
    actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :genre
      f.input :softhouse
      f.input :platform
      f.input :image, :as => :file
      f.input :description
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :image do |course|
        image_tag(course.image.url(:medium))
      end
      row :created_at
      row :updated_at
    end
  end


end