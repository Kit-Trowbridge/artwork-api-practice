class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :artist
      t.string :title
      t.string :image_url
      t.integer :year

      t.timestamps
    end
  end
end
