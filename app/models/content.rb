class Content < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "700x450#", thumb: "250x150#" },
                    :url  => "/images/content/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/content/:id/:style/:basename.:extension"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 2.megabytes
end
