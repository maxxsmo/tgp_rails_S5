Rails.application.routes.draw do
  get 'user/index'
  get 'user/show'
  get 'user/update'
  get 'user/new'
  get 'user/create'
  get 'user/delete'
  resources :gossip do
    resources :user
  end

  resources :home do
    resources :user
  end
  
  resources :user
  resources :home
  resources :team
  resources :contact
  
  # get 'home/:user_by_name', to: 'home#index'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
