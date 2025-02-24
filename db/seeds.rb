require "JSON"
require "open-uri"

Artwork.destroy_all

url = "https://api.artic.edu/api/v1/artworks"
serialized_artworks = URI.parse(url).read
artworks = JSON.parse(serialized_artworks)["data"]

artworks.each do |artwork|
  Artwork.create(
    artist: artwork["artist_title"].present? || "Anonymous",
    title: artwork["title"],
    description: artwork["description"],
    image_url: "https://www.artic.edu/iiif/2/#{artwork["image_id"]}/full/843,/0/default.jpg",
    alt_text: artwork["thumbnail"]["alt_text"],
    year: artwork["date_end"],
  )
end
