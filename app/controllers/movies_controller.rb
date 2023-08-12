class MoviesController < ApplicationController
  def index
    response = HTTParty.get("#{TMDB_BASE_URL}/movie/popular?api_key=#{TMDB_API_KEY}")
    @popular_movies = response.parsed_response['results']

    @movies = Movie.all
  end

  def search
    query = params[:query]
    response = HTTParty.get("#{TMDB_BASE_URL}/search/movie?api_key=#{TMDB_API_KEY}&query=#{query}")
    @search_results = response.parsed_response['results']
  end

  def show
    response = HTTParty.get("#{TMDB_BASE_URL}/movie/#{params[:id]}?api_key=#{TMDB_API_KEY}")
    @movie = response.parsed_response
    render :show
  end

  def add_to_favorites
    movie_id = params[:movie_id]
    if FavoriteMovie.exists?(movie_id: movie_id)
      @added_to_favorites = false
    else
      FavoriteMovie.create(movie_id: movie_id)
      @added_to_favorites = true
    end
    puts "@added_to_favorites: #{@added_to_favorites}"
    redirect_back(fallback_location: root_path)
  end


  def favorites
    favorite_movie_ids = FavoriteMovie.pluck(:movie_id)
    @favorite_movies = favorite_movie_ids.map { |movie_id| fetch_movie(movie_id) }
  end

  private

  def fetch_movie(movie_id)
    response = HTTParty.get("#{TMDB_BASE_URL}/movie/#{movie_id}?api_key=#{TMDB_API_KEY}")
    response.parsed_response
  end

end


