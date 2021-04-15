Rails.application.routes.draw do
  devise_for :users
  root to: "memos#index"
  resources :memos
  resources :genres, only: [:new, :create]
end
