class Game < ActiveRecord::Base
  belongs_to :genre
  belongs_to :softhouse
  belongs_to :platform

  has_attached_file :image, styles: {high: "1140x750#", medium: "900x500#", thumb: "200x150#" },
                    :url  => "/images/game/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/images/game/:id/:style/:basename.:extension"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates_attachment_size :image, less_than: 2.megabytes

  def self.genreRelated genre, game, amount
    Game.where(genre: genre).where.not(id: game).first(amount)
  end

  def self.softhouseRelated softhouse,game, amount
    Game.where(softhouse: softhouse).where.not(id: game).first(amount)
  end

  def self.platformRelated platform, game, amount
    Game.where(platform: platform).where.not(id: game).first(amount)
  end
end
