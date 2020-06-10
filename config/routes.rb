Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get "users", to: "users#show"
  
  resources :users do
    resources :children
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
