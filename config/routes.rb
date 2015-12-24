Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'posts#index'

  resources :users
  get "signup" => "users#new"
  get "login" => "sessions#new"
  post "login" => "sessions#create"
  delete "logout" => "sessions#destroy"

  get "about" => "abouts#index"
  
  resources :posts do
    resources :comments
  end
end
