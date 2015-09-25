class Softhouse < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "350x260#", thumb: "50x50#" },
                    :url  => "/images/softhouse/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/softhouse/:id/:style/:basename.:extension"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 2.megabytes

end
