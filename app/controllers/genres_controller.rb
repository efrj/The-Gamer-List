class GenresController < ApplicationController

    def index
        @genres = Genre.order("name").page(params[:page]).per(20)
    end

    def show
        @genre = Genre.find(params[:id])
        @games = Game.where(genre: @genre.id).page(params[:page]).per(20)
    end

    def menu
        @genres = Genre.all
        render :layout => false
    end
end
