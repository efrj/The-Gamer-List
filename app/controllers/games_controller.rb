class GamesController < ApplicationController
  def index
    @games = Game.order("title").page(params[:page]).per(4)
  end

  def show
    @game = Game.find(params[:id])
    @genresRelated = Game.where(genre: @game.genre.id).where.not(id: @game.id).first(4)
    @softhousesRelated = Game.where(softhouse: @game.softhouse.id).where.not(id: @game.id).first(4)
    @platformsRelated = Game.where(platform: @game.platform.id).where.not(id: @game.id).first(4)
  end
end
