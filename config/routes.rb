Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_programs, only: [:index, :show, :create]
      resources :services, only: [:index]
      resources :subscriptions, only: [:create]
      
      # post 'new_user_subscriptions/:user_id', to: 'subscriptions#create'
      get 'show_row/:row_id', to: 'services#show_row'
      post 'watched_program/:id', to: 'user_programs#seen_program'
      post 'remove_program/:id', to: 'user_programs#remove_program'
      post 'delete_seen/:id', to: 'user_programs#destroy_seen_program'
      post 'delete_removed/:id', to: 'user_programs#destroy_removed_program'
      get '/series_watchlist/:user_id', to: 'user_programs#series_watchlist'
      get '/movie_watchlist/:user_id', to: 'user_programs#movie_watchlist'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/logged_in', to: 'sessions#is_logged_in?'
    end
  end  
  
  
end
