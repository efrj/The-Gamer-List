class GamesController < ApplicationController
  def index
    @games = Game.order("title").page(params[:page]).per(20)
  end

  def show
    @game = Game.find(params[:id])
    @genres = Game.genre_related(@game.genre.id, @game.id, 4)
    @softhouses = Game.softhouse_related(@game.softhouse.id, @game.id, 4)
    @platforms = Game.platform_related(@game.platform.id, @game.id, 4)
  end
end
