Rails.application.routes.draw do

	devise_for :admin_users, ActiveAdmin::Devise.config

	ActiveAdmin.routes(self)

	devise_for :users

	resources :blocks do
		resources :gauges
	end
  resources :portals
	resources :widgets
  resources :gauges do
  	resources :blocks
  end

	get 'home' => 'home#index', :as => 'index'
	root :to => 'home#index'

end
