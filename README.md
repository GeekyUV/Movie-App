Simple Movie App
Welcome to the Simple Movie App! This is a Ruby on Rails application that allows you to explore and manage your favorite movies. The app uses Ruby version 3.2.2 and Rails version 7.0.7, and it utilizes the following gems: httparty and sassc-rails.

Table of Contents
Features
Getting Started
Usage
Endpoints
Contributing
License
Features
View a list of the latest movies.
Search for movies by title.
Display detailed information about a movie.
Add movies to your favorite list.
View your list of favorite movies.
Getting Started
To get started with the Simple Movie App, follow these steps:

Clone the repository:

bash
Copy code
git clone <repository-url>
Install the required gems:

bash
Copy code
bundle install
Set up the database:

bash
Copy code
rails db:create
rails db:migrate
Start the Rails server:

bash
Copy code
rails server
Visit http://localhost:3000 in your web browser to access the app.

Usage
Once the app is up and running, you can use the following features:

1. Latest Movies List
Visit the homepage to see a list of the latest movies.

2. Movie Search
Use the search option to find movies by their titles.

3. Movie Details
Click on any movie in the list view to see detailed information about the movie.

4. Add to Favorites
From the movie list view, you can add a movie to your favorites list.

5. Favorite Movies List
View your list of favorite movies by clicking on the "Favorite Movies" option.

Endpoints
The app provides the following endpoints:

GET /movies: Display a list of the latest movies.
GET /movies/search: Search for movies by title.
GET /movies/:id: Display detailed information about a movie.
POST /movies/add_to_favorites: Add a movie to the favorite list.
GET /favorite_movies: View the list of favorite movies.
DELETE /favorite_movies/:id: Remove a movie from the favorite list.
Contributing
Contributions are welcome! If you'd like to contribute to the Simple Movie App, please follow these steps:

Fork the repository.
Create a new branch for your feature or bug fix.
Make your changes and commit them.
Push your changes to your fork.
Submit a pull request to the main repository.
License
The Simple Movie App is open-source software licensed under the MIT License.

Thank you for using the Simple Movie App! If you have any questions or need assistance, please don't hesitate to contact us. Enjoy exploring and managing your favorite movies!