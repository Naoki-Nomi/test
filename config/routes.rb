Rails.application.routes.draw do

  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'
  resources :books, except: [:new]
  resources :users, only: [:show, :index, :edit, :update]

end
