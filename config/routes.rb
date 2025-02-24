Rails.application.routes.draw do
  root "artworks#index"
  resources :artworks
end
