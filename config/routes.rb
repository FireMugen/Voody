Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/edit'
  get 'users/index'

  get 'users/show'
  get 'recipes/edit'
  get 'recipes/new'
  get 'recipes/show'

  get  '/signup',  to: 'users#new'
	post '/signup',  to: 'users#create'

	get    '/login',   to: 'sessions#new'
	post   '/login',   to: 'sessions#create'
	delete '/logout',  to: 'sessions#destroy'

	get  '/help',    to: 'static_pages#help'
	get  '/about',   to: 'static_pages#about'
	get  '/contact', to: 'static_pages#contact'

	root :to => 'static_pages#home'
	resources :users
	resources :account_activations, only: [:edit]
	resources :recipes         

end
