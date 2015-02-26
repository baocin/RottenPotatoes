class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def show
		id = params[:id]
		@movie = Movie.find(id)
		# will render app/views/movies/show.html.haml
	end
end
