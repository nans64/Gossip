Rails.application.routes.draw do
  get 'contact', to: 'contact#index_contact'
  get 'team', to: 'team#index_team'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
