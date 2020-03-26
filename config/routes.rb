Rails.application.routes.draw do
  resources :author_tags
  resources :tags
  resources :authors
  resources :quote_games
  resources :quotes
  resources :games
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/random-quote', to: 'quotes#random_quote', as: 'random_quote'
  # get '/random-author', to: 'authors#random_author', as: 'random_author'

  get '/start-game', to: 'games#start_game', as: 'start_game'
  get '/get-rounds', to: 'games#get_rounds', as: 'get_rounds'

end
