Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts do
    resources :comments, only: :create

    collection do
      get 'search'
    end

    member do
      get 'choice'
    end

  end
  resources :users, only: :show
end
