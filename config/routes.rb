Rails.application.routes.draw do
  get 'users/edit'
  get 'users/index'
  get 'users/new'
  get 'users/show'
  get 'recipes/edit'
  get 'recipes/new'
  get 'recipes/show'

  get  '/signup',  to: 'users#new'
	get  '/help',    to: 'static_pages#help'
	get  '/about',   to: 'static_pages#about'
	get  '/contact', to: 'static_pages#contact'
  root :to => 'static_pages#home'
end
