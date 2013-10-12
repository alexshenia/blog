Blog::Application.routes.draw do
  resources :posts
  resources :comments, only: [:create]
end
