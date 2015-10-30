Rails.application.routes.draw do
  get 'stats/index'

  get 'stats/show'

  resources :users
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

  resources :items do
    resources :finances
  end

  get '/home',   to: 'homes#index',    as: 'home'
  get '/items.csv', to: 'items#index', as: 'items_export'
  get '/update_subcat1', to: 'items#update_subcat1', as: 'subcategory1'
  get '/update_subcat2', to: 'items#update_subcat2', as: 'subcategory2'


  root 'homes#index'
end
