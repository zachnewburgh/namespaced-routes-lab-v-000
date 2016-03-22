Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :access, only: [:index, :update, :show]
    resources :settings, only: [:index, :update]
  end

end
