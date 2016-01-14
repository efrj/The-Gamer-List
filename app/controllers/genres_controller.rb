class GenresController < ApplicationController

	def menu
		@genres = Genre.all
		render :layout => false
	end
end
