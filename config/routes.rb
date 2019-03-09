Rails.application.routes.draw do
  root 'blog#index'
  get 'blog'          => 'content#index'
  get 'blog/new'      => 'content#new'
  post 'blog'         => 'content#create'
end
