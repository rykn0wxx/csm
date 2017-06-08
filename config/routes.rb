Rails.application.routes.draw do

  resources :portals
	devise_for :admin_users, ActiveAdmin::Devise.config

	ActiveAdmin.routes(self)

	devise_for :users

	get 'home' => 'home#index', :as => 'home'
	root :to => 'home#index'

end
