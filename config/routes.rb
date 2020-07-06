Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }

  root to: 'pages#home'
  get "users", to: "users#show"
  get 'thanks', to: 'pages#thanks'
  get 'breakdown', to: 'pages#breakdown'
  get 'faq', to: 'pages#faq'
  get 'events', to: 'events#index'
  get 'profile', to: 'pages#profile'
  
  resources :children
  resources :user do
    member do
      get :confirm_email
    end
  end
  resources :participations
  resources :events
  resources :contact, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
