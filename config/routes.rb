Rails.application.routes.draw do
  resources :posts
  resources :stories do
    member do
      post :like
    end
  end

  delete '/logout', to: 'session#destroy', as: :logout
  get '/auth/:provider/callback', to: 'sessions#create'

  root to: 'stories#index'
end
