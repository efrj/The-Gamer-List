class Banner < ActiveRecord::Base

  #validates :link, :url => true
  
  # has_attached_file :image, styles: { high: "1140x400#", medium: "700x450#", thumb: "150x100#" },
  #                   :url  => "/images/banner/:id/:style/:basename.:extension",
  #                   :path => ":rails_root/public/images/banner/:id/:style/:basename.:extension"

  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # validates_attachment_size :image, less_than: 2.megabytes
end
