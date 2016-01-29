class PageController < ApplicationController
    def index
        @games = Game.last(6)
        @platforms = Platform.last(6)
        @softhouses = Softhouse.last(6)
        @presentation = Content.find(2)
        @banners = Banner.last(5)
    end

    def about
    	@page = Content.find(1)
    end
end
