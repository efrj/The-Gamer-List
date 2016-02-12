class PlatformsController < ApplicationController
  def index
    @platforms = Platform.order("name").page(params[:page]).per(20)
  end

  def show
    @platform = Platform.find(params[:id])
  end

end
