Rails.application.routes.draw do
  get 'stats/index'

  get 'stats/show'

  resources :users
  resources :photos, :except => [:index]

  resources :subcat2s
  resources :subcat1s
  resources :categories do
    member do
      get 'items'
    end
  end
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

  get '/home',           to: 'homes#index',    as: 'home'
  get '/items.csv',      to: 'items#index', as: 'items_export'
  get '/update_subcat1', to: 'items#update_subcat1', as: 'subcategory1'
  get '/update_subcat2', to: 'items#update_subcat2', as: 'subcategory2'
  get '/login',          to: 'sessions#new', as: 'login'
  post '/login',         to: 'sessions#create',  as: 'create_session'
  get '/logout',         to: 'sessions#destroy', as: 'logout'


  root 'sessions#new'
end
