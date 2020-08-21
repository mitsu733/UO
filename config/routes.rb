Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'articles#index'

  resources :articles, except: [:show]
  get 'articles/app_show' => 'articles#app_show', as: "app_article"
  get 'articles/illust_show' => 'articles#illust_show', as: "illust_article"

end


