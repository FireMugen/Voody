Rails.application.routes.draw do
  get 'users/edit'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'recipes/edit'
  get 'recipes/new'
  get 'recipes/show'

  root :to => 'static_pages#home'
end
