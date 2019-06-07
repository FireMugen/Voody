Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'recipes/edit'
  get 'recipes/new'
  get 'recipes/show'

  root :to => 'static_pages#home'
end
