Rails.application.routes.draw do
  resources :photos
  resources :subcat2s
  resources :subcat1s
  resources :categories
  resources :finances
  resources :items
  resources :sources

  root 'sources#index'
end
