Rails.application.routes.draw do
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  root to: "homes#top"


  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  #get 'books/new'
  #get 'books/index'
  #get 'books/show'
  #get 'books/edit'

  resources :users, only: [:index, :show, :edit, :update]
  #get 'users/show'
  #get 'users/edit'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  #get 'users/:id/edit' => 'users#edit', as: 'edit_user'
  patch 'users/:id' => 'users#update', as: 'update_user'





end
