Rails.application.routes.draw do
  root 'welcome#index'
  resources :users
  resources :points_transactions
  resources :houses

  get '/create_energy_reading', to: 'energy_readings#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
