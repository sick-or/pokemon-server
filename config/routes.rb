Rails.application.routes.draw do
  root "articles#index"

  get '/about', to: 'about#about'
  get '/my_projects', to: 'my_projects#my'

  resources :articles do
    resources :comments
  end
  
  resources :pokemon do
    resources :stats
    resources :poke_types
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
