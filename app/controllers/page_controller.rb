class PageController < ApplicationController
    def index
        @game = Game.last(6)
        @platform = Platform.last(6)
        @softhouse = Softhouse.last(6)
    end
end
