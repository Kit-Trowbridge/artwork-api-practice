class AddDefaultToArtworks < ActiveRecord::Migration[7.1]
  def change
    change_column_default :artworks, :artist, from: nil, to: 'Anonymous'
  end
end
