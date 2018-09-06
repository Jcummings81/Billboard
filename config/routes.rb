Rails.application.routes.draw do
  root 'boards#index'


  resources :boards do
    resources :songs
  end


  scope "artists/:artist_id", as: "artist" do
    resources :songs, only: [:new, :create]
  end
end
