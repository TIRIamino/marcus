Rails.application.routes.draw do
  root to: 'pages#home'
  resources :motels, only: [ :index, :show, :destroy ] do
   resources :reviews, only: :create
  end
end

