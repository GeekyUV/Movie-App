module MoviesHelper
  def added_to_favorites?(movie_id)
    FavoriteMovie.exists?(movie_id: movie_id)
  end
end