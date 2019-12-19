class CreateUserPrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :user_programs do |t|
      t.references :user, index: true
      t.references :program, index: true
      t.string :is_seen
      t.string :is_rejected
      t.string :is_watchlist
      t.integer :is_movie
      t.string :title
      t.string :release_year
      t.string :imdb
      t.integer :rottentomatoes
      t.string :genre
      t.string :description
      t.string :cast
      t.string :director
      t.string :writers
      t.string :poster
      t.integer :user_rating
      t.integer :priority
    end
  end
end
