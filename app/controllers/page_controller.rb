class PageController < ApplicationController
  def index
    @games = Game.last(4)
    @platforms = Platform.last(4)
    @softhouses = Softhouse.last(4)
    @presentation = Content.find_by_slug('presentation-index')
    @banners = Banner.last(5)
  end

  def about
    @page = Content.find(1)
  end
end
