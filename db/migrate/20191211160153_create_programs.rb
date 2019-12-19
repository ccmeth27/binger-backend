class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :program do |t|
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
    end
  end
end
