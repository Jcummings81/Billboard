Rails.application.routes.draw do
  devise_for :users
  root 'boards#index'

resources :accounts
  resources :boards do
    resources :songs
  end


  scope "artists/:artist_id", as: "artist" do
    resources :songs, only: [:new, :create]
  end
end
