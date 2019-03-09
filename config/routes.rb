Rails.application.routes.draw do
  get 'blog'          => 'content#index'
  get 'blog/new'      => 'content#new'
  post 'blog'         => 'content#create'
end
