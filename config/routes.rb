Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'
  get 'users/show'
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  devise_for :books
  devise_for :users
  root to: "homes#top"
  get "/homes/about" => 'homes#about', as: 'about'
end
