class PlatformsController < ApplicationController
  def index
    @platforms = Platform.order("name").page(params[:page]).per(20)
  end

  def show
    @platform = Platform.find(params[:id])
    @games = Game.where(platform: @platform.id).order("RANDOM()").last(10)
  end

  def menu
  	@platforms = Platform.all
  	render :layout => false
  end

end
