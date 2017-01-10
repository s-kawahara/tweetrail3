Rails.application.routes.draw do
  root to: "home#index"
  resources :tweets
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout"}

  post 'like/:tweet_id' => 'likes#like', as:'like'
  delete 'unlike/:tweet_id' => 'likes#unlike', as:'unlike'

  resources :users, :only => [:index, :show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
