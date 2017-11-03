# == Route Map
#
#                   Prefix Verb   URI Pattern                            Controller#Action
#                     root GET    /                                      posts#index
#         new_user_session GET    /users/sign_in(.:format)               devise/sessions#new
#             user_session POST   /users/sign_in(.:format)               devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)              devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)          devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)         devise/passwords#edit
#            user_password PATCH  /users/password(.:format)              devise/passwords#update
#                          PUT    /users/password(.:format)              devise/passwords#update
#                          POST   /users/password(.:format)              devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)               devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)                  devise/registrations#edit
#        user_registration PATCH  /users(.:format)                       devise/registrations#update
#                          PUT    /users(.:format)                       devise/registrations#update
#                          DELETE /users(.:format)                       devise/registrations#destroy
#                          POST   /users(.:format)                       devise/registrations#create
#            post_comments POST   /posts/:post_id/comments(.:format)     comments#create
#             post_comment DELETE /posts/:post_id/comments/:id(.:format) comments#destroy
#                    posts GET    /posts(.:format)                       posts#index
#                          POST   /posts(.:format)                       posts#create
#                 new_post GET    /posts/new(.:format)                   posts#new
#                edit_post GET    /posts/:id/edit(.:format)              posts#edit
#                     post GET    /posts/:id(.:format)                   posts#show
#                          PATCH  /posts/:id(.:format)                   posts#update
#                          PUT    /posts/:id(.:format)                   posts#update
#                          DELETE /posts/:id(.:format)                   posts#destroy
#

Rails.application.routes.draw do

  namespace :admin do
    resources :users
    resources :comments
    resources :posts
    resources :reports

    root to: "users#index"
  end

  root 'posts#index'

  #投稿とそれ対するコメント
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  devise_for :users, controllers: {
    registrations: "users/registrations",
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  
  resources :users, only: [:index, :show]



  #開発のメール
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
