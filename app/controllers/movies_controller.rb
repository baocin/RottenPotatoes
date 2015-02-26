class MoviesController < ApplicationController
	def index
		@movies = Movie.all
	end
	def show
		id = params[:id]
		@movie = Movie.find(id)
		# will render app/views/movies/show.html.haml
	end
	def new
		#needs no data from the model to function
		#render new template
	end
	def create
		@movie = Movie.create!(params[:movie]);
		flash[:notice]  = "#{@movie.title} was successfuly created!"
		redirect_to movies_path
	end
	def edit
		@movie = Movie.find params[:id]
	end
	def update
		@movie = Movie.find params[:id]
		@movie.update_attributes!(params[:movie])
		flash[:notice] = "#{@movie.title} was successfuly updated!"
		redirect_to movie_path (@movie)
	end
	def destroy
		@movie = Movie.find(params[:id])
		@movie.destroy
		flash[:notice] = "Movie '#{@movie.title}' deleted."
		redirect_to movies_path
	end
end
