Rails.application.routes.draw do
  
  get 'contact', to: 'contact#index_contact'
  get 'team', to: 'team#index_team'
  get 'welcome/:first_name', to: 'welcome#index_welcome', as: 'welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
