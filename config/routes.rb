# == Route Map
#
#                         Prefix Verb       URI Pattern                                       Controller#Action
#         new_admin_user_session GET        /admin/login(.:format)                            active_admin/devise/sessions#new
#             admin_user_session POST       /admin/login(.:format)                            active_admin/devise/sessions#create
#     destroy_admin_user_session DELETE|GET /admin/logout(.:format)                           active_admin/devise/sessions#destroy
#        new_admin_user_password GET        /admin/password/new(.:format)                     active_admin/devise/passwords#new
#       edit_admin_user_password GET        /admin/password/edit(.:format)                    active_admin/devise/passwords#edit
#            admin_user_password PATCH      /admin/password(.:format)                         active_admin/devise/passwords#update
#                                PUT        /admin/password(.:format)                         active_admin/devise/passwords#update
#                                POST       /admin/password(.:format)                         active_admin/devise/passwords#create
#                     admin_root GET        /admin(.:format)                                  admin/dashboard#index
# batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)         admin/admin_users#batch_action
#              admin_admin_users GET        /admin/admin_users(.:format)                      admin/admin_users#index
#                                POST       /admin/admin_users(.:format)                      admin/admin_users#create
#           new_admin_admin_user GET        /admin/admin_users/new(.:format)                  admin/admin_users#new
#          edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)             admin/admin_users#edit
#               admin_admin_user GET        /admin/admin_users/:id(.:format)                  admin/admin_users#show
#                                PATCH      /admin/admin_users/:id(.:format)                  admin/admin_users#update
#                                PUT        /admin/admin_users/:id(.:format)                  admin/admin_users#update
#                                DELETE     /admin/admin_users/:id(.:format)                  admin/admin_users#destroy
#           import_admin_clients GET        /admin/clients/import(.:format)                   admin/clients#import
#        do_import_admin_clients POST       /admin/clients/do_import(.:format)                admin/clients#do_import
#     batch_action_admin_clients POST       /admin/clients/batch_action(.:format)             admin/clients#batch_action
#                  admin_clients GET        /admin/clients(.:format)                          admin/clients#index
#                                POST       /admin/clients(.:format)                          admin/clients#create
#               new_admin_client GET        /admin/clients/new(.:format)                      admin/clients#new
#              edit_admin_client GET        /admin/clients/:id/edit(.:format)                 admin/clients#edit
#                   admin_client GET        /admin/clients/:id(.:format)                      admin/clients#show
#                                PATCH      /admin/clients/:id(.:format)                      admin/clients#update
#                                PUT        /admin/clients/:id(.:format)                      admin/clients#update
#                                DELETE     /admin/clients/:id(.:format)                      admin/clients#destroy
#                admin_dashboard GET        /admin/dashboard(.:format)                        admin/dashboard#index
#          import_admin_projects GET        /admin/projects/import(.:format)                  admin/projects#import
#       do_import_admin_projects POST       /admin/projects/do_import(.:format)               admin/projects#do_import
#    batch_action_admin_projects POST       /admin/projects/batch_action(.:format)            admin/projects#batch_action
#                 admin_projects GET        /admin/projects(.:format)                         admin/projects#index
#                                POST       /admin/projects(.:format)                         admin/projects#create
#              new_admin_project GET        /admin/projects/new(.:format)                     admin/projects#new
#             edit_admin_project GET        /admin/projects/:id/edit(.:format)                admin/projects#edit
#                  admin_project GET        /admin/projects/:id(.:format)                     admin/projects#show
#                                PATCH      /admin/projects/:id(.:format)                     admin/projects#update
#                                PUT        /admin/projects/:id(.:format)                     admin/projects#update
#                                DELETE     /admin/projects/:id(.:format)                     admin/projects#destroy
#     batch_action_admin_regions POST       /admin/regions/batch_action(.:format)             admin/regions#batch_action
#                  admin_regions GET        /admin/regions(.:format)                          admin/regions#index
#                                POST       /admin/regions(.:format)                          admin/regions#create
#               new_admin_region GET        /admin/regions/new(.:format)                      admin/regions#new
#              edit_admin_region GET        /admin/regions/:id/edit(.:format)                 admin/regions#edit
#                   admin_region GET        /admin/regions/:id(.:format)                      admin/regions#show
#                                PATCH      /admin/regions/:id(.:format)                      admin/regions#update
#                                PUT        /admin/regions/:id(.:format)                      admin/regions#update
#                                DELETE     /admin/regions/:id(.:format)                      admin/regions#destroy
#                 admin_comments GET        /admin/comments(.:format)                         admin/comments#index
#                                POST       /admin/comments(.:format)                         admin/comments#create
#                  admin_comment GET        /admin/comments/:id(.:format)                     admin/comments#show
#                                DELETE     /admin/comments/:id(.:format)                     admin/comments#destroy
#               new_user_session GET        /users/sign_in(.:format)                          devise/sessions#new
#                   user_session POST       /users/sign_in(.:format)                          devise/sessions#create
#           destroy_user_session DELETE     /users/sign_out(.:format)                         devise/sessions#destroy
#              new_user_password GET        /users/password/new(.:format)                     devise/passwords#new
#             edit_user_password GET        /users/password/edit(.:format)                    devise/passwords#edit
#                  user_password PATCH      /users/password(.:format)                         devise/passwords#update
#                                PUT        /users/password(.:format)                         devise/passwords#update
#                                POST       /users/password(.:format)                         devise/passwords#create
#       cancel_user_registration GET        /users/cancel(.:format)                           devise/registrations#cancel
#          new_user_registration GET        /users/sign_up(.:format)                          devise/registrations#new
#         edit_user_registration GET        /users/edit(.:format)                             devise/registrations#edit
#              user_registration PATCH      /users(.:format)                                  devise/registrations#update
#                                PUT        /users(.:format)                                  devise/registrations#update
#                                DELETE     /users(.:format)                                  devise/registrations#destroy
#                                POST       /users(.:format)                                  devise/registrations#create
#              portal_todo_lists GET        /portals/:portal_id/todo_lists(.:format)          todo_lists#index
#                                POST       /portals/:portal_id/todo_lists(.:format)          todo_lists#create
#           new_portal_todo_list GET        /portals/:portal_id/todo_lists/new(.:format)      todo_lists#new
#          edit_portal_todo_list GET        /portals/:portal_id/todo_lists/:id/edit(.:format) todo_lists#edit
#               portal_todo_list GET        /portals/:portal_id/todo_lists/:id(.:format)      todo_lists#show
#                                PATCH      /portals/:portal_id/todo_lists/:id(.:format)      todo_lists#update
#                                PUT        /portals/:portal_id/todo_lists/:id(.:format)      todo_lists#update
#                                DELETE     /portals/:portal_id/todo_lists/:id(.:format)      todo_lists#destroy
#                        portals GET        /portals(.:format)                                portals#index
#                                POST       /portals(.:format)                                portals#create
#                     new_portal GET        /portals/new(.:format)                            portals#new
#                    edit_portal GET        /portals/:id/edit(.:format)                       portals#edit
#                         portal GET        /portals/:id(.:format)                            portals#show
#                                PATCH      /portals/:id(.:format)                            portals#update
#                                PUT        /portals/:id(.:format)                            portals#update
#                                DELETE     /portals/:id(.:format)                            portals#destroy
#                           home GET        /home(.:format)                                   home#index
#                           root GET        /                                                 home#index
#

Rails.application.routes.draw do

	devise_for :admin_users, ActiveAdmin::Devise.config

	ActiveAdmin.routes(self)

	devise_for :users

  resources :portals do
    resources :todo_lists
  end

	get 'home' => 'home#index', :as => 'home'
	root :to => 'home#index'

end
