class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :photo_url
      t.string :genre
      t.string :studio
      t.date :release_date
      t.integer :rating

      t.timestamps null: false
    end
  end
end
