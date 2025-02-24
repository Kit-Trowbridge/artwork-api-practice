class AddAltTextToArtworks < ActiveRecord::Migration[7.1]
  def change
    add_column :artworks, :alt_text, :string
  end
end
