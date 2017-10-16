Rails.application.routes.draw do
  root 'home#index'

  devise_for :users
  
  #投稿とそれ対するコメント
  resources :posts do
    resources :comments
  end
end
