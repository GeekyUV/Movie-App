
# Simple Movie App
Welcome to the Simple Movie App! This is a Ruby on Rails application that allows you to explore and manage your favorite movies. The app uses Ruby version 3.2.2 and Rails version 7.0.7, and it utilizes the following gems: httparty and sassc-rails.

## API Key
The app retrieves movie data from The Movie Database (TMDB) API. To use the app with TMDB, add your API key to the configuration:
- https://www.themoviedb.org/


## Features
- View a list of the latest movies.
- Search for movies by title.
- Display detailed information about a movie.
- Add movies to your favorite list.
- View your list of favorite movies.
- Add/Remove movies from favorites section

## Getting Started
- Clone the repository:
```bash
 git clone https://github.com/GeekyUV/Movie-App.git
 ```
 - Install the required gems:
 ```bash
bundle install
 ```
 - Set up the database:
  ```bash
rails db:create
rails db:migrate
 ```
 - In config/initializers/tmdb.rb add your API key and URL
  ```bash
TMDB_API_KEY = 'cdceb16c8a9c47766f64aa8557d6893b' //your api key here
TMDB_BASE_URL = 'https://api.themoviedb.org/3'

 ```
Start the Rails server:
  ```bash
rails server or rails s

 ```

 ## EndPoints 
- GET /movies: Display a list of the latest movies.
- GET /movies/search: Search for movies by title.
- GET /movies/:id: Display detailed information about a movie.
- POST /movies/add_to_favorites: Add a movie to the favorite list.
- GET /favorite_movies: View the list of favorite movies.
- DELETE /favorite_movies/:id: Remove a movie from the favorite list.


 






