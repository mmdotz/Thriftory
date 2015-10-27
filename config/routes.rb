Rails.application.routes.draw do
  resources :photos
  resources :subcat2s
  resources :subcat1s
  resources :categories
  resources :finances
  resources :items
  resources :sources

  resources :categories do
    resources :subcat1s do
      resources :subcat2s
    end
  end

  resources :sources do
    resources :items
  end

  get '/home',   to: 'homes#index',    as: 'home'

  root 'homes#index'
end
