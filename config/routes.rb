Rails.application.routes.draw do
  resources :users
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/coasters', to: 'pages#coasters'
  get '/home', to: 'pages#home'
  get '/donate', to: 'pages#donate'
  get '/news', to: 'pages#news'
  get '/events', to: 'pages#events'
  get '/products', to: 'pages#products'
  get '/volunteer', to: 'pages#volunteer'
  get '/make_event', to: 'pages#make_event'
  get '/innovation', to: 'pages#innovation'
  get '/innovation_details', to: 'pages#innovation_details'
  get '/innovation_application', to: 'pages#innovation_application'
  get '/admin', to: 'pages#admin'
  get '/gallery', to: 'pages#gallery'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
