class SofthousesController < ApplicationController
  def index
    @softhouses = Softhouse.order("name").page(params[:page]).per(20)
  end

  def show
    @softhouse = Softhouse.find(params[:id])
    @games = Game.where(softhouse: @softhouse.id).order("RANDOM()").last(10)
  end

end
