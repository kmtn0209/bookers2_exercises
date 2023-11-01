Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'
  get 'users/show'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  post 'books' => 'books#create'
  devise_for :books
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => 'homes#about', as: 'about'

end
