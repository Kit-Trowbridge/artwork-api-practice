class AddDescriptionToArtworks < ActiveRecord::Migration[7.1]
  def change
    add_column :artworks, :description, :text
  end
end
