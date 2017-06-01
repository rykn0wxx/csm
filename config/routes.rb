Rails.application.routes.draw do

  resources :blocks
	devise_for :admin_users, ActiveAdmin::Devise.config

	ActiveAdmin.routes(self)

	devise_for :users

  resources :portals
	resources :widgets
  resources :gauges do
  end

	get 'index' => 'home#index', :as => 'index'
	root :to => 'home#index'

end
