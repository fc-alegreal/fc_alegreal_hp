Rails.application.routes.draw do
  root to: 'home#index'

  get '/home', to: 'home#index'
  get '/team', to: 'team#index'
  get '/schedule', to: 'schedule#index'

  devise_for :users, skip: [:sessions]
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    get 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  resources :members

  get '*not_found' => 'errors#routing_error'
  post '*not_found' => 'errors#routing_error'
end
