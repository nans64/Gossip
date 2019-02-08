Rails.application.routes.draw do
  
  get 'contact', to: 'contact#index_contact'
  get 'team', to: 'team#index_team'
  # Welcome page
  root 'gossips#index'
  resources :authors
  resources :cities
  resources :gossips

  resources :gossips do
  resources :comments
  end

  resources :gossips do
  resources :likes
  end
  
  resources :sessions, only: [:new, :create, :destroy]

  resources :users

  resources :conversations do
    resources :messages
  end

end
