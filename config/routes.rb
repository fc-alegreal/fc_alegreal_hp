Rails.application.routes.draw do
  root to: 'home#index'
  get '/home', to: 'home#index'
  get '/team', to: 'team#index'
  get '/schedule', to: 'schedule#index'

  get '*not_found' => 'errors#routing_error'
  post '*not_found' => 'errors#routing_error'
end
