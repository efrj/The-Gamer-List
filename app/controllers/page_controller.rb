class PageController < ApplicationController
    def index
        @games = Game.last(6)
        @platforms = Platform.last(6)
        @softhouses = Softhouse.last(6)
    end
end
