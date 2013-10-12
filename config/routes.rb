Blog::Application.routes.draw do
  root to: 'home#index'
  devise_for  :users
  resources :posts
  resources :comments, only: [:create]

end
