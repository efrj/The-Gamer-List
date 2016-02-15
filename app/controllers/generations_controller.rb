class GenerationsController < ApplicationController
  def index
    @generations = Generation.order("name").page(params[:page]).per(20)
  end

  def show
    @generation = Generation.find(params[:id])
    @platforms = Platform.where(generation: @generation.id).order("RANDOM()")
  end

  def menu
  	@generations = Generation.all
  	render :layout => false
  end

end
