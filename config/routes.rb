Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }

  root to: 'pages#home'
  get "users", to: "users#show"
  get 'thanks', to: 'pages#thanks'
  get 'breakdown', to: 'pages#breakdown'
  get 'faq', to: 'pages#faq'
  
  resources :children
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
