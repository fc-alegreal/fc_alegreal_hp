Rails.application.routes.draw do
  root to: 'home#index'
  get '/home', to: 'home#index'

  get '*not_found' => 'errors#routing_error'
  post '*not_found' => 'errors#routing_error'
end
