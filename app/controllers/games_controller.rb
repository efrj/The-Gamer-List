class GamesController < ApplicationController
  def index
    @games = Game.order("title").page(params[:page]).per(20)
  end

  def show
    @game = Game.find(params[:id])
    @genres = Game.genreRelated(@game.genre.id, @game.id, 4)
    @softhouses = Game.softhouseRelated(@game.softhouse.id, @game.id, 4)
    @platforms = Game.platformRelated(@game.platform.id, @game.id, 4)
  end
end
