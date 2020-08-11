Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to =>'articles#index'

  get 'articles/new' => 'articles#new'
  get 'articles/:id' => 'articles#show', as: "article"
  get 'articles/:id/edit' => 'articles#edit', as: "edit_article"
  post 'articles' => 'articles#create'
  patch 'articles/:id' => 'articles#update', as: "update_article"
  delete 'articles/:id' => 'articles#destroy', as: "destroy_article"
end


