class Game < ActiveRecord::Base
  belongs_to :genre
  belongs_to :softhouse
  belongs_to :platform

  has_attached_file :image, styles: { medium: "350x260#", thumb: "50x50#" },
                    :url  => "/images/game/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/game/:id/:style/:basename.:extension"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 2.megabytes
end
