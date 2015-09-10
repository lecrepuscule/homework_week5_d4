class ChangeGamesPhotoUrlText < ActiveRecord::Migration
  def change
    change_column(:games, :photo_url, :text)
  end
end
