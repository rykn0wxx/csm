Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :dashboards
  resources :pages
  get 'home' => 'home#index', :as => 'home'
  root :to => 'home#index'
end
