class FavoriteMoviesController < ApplicationController

  def destroy
    favorite_movie = FavoriteMovie.find_by(movie_id: params[:id])
    favorite_movie.destroy
    flash[:notice] = 'Movie removed from favorites.'
    redirect_back(fallback_location: root_path)
  end

end
