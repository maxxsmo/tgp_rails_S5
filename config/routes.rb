Rails.application.routes.draw do
  resources :user
  resources :gossip do
    resources :user
  end

  resources :home do
    resources :user
  end
  
  resources :city
  resources :team
  resources :contact
  
  # get 'home/:user_by_name', to: 'home#index'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
