Rails.application.routes.draw do
  devise_for :users
  root 'content#index'
  get 'blog'          => 'content#index'
  get 'blog/new'      => 'content#new'
  post 'blog'         => 'content#create'
  delete 'blog/:id'   => 'content#destroy'
  get 'blog/:id/edit'      => 'content#edit'
  patch 'blog/:id'  => 'content#update'
  get 'blog/:id'      => 'content#show'
  get 'users/:id'      => 'users#show'
end
