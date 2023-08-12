class CreateFavoriteMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :favorite_movies do |t|
      t.integer :movie_id

      t.timestamps
    end
  end
end
