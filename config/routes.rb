Rails.application.routes.draw do
  
  devise_for :users
  root 'homes#top'
  
  resources :users, only: [:show] do
    member do
      get :likes
    end
  end

  resources :comics, only: [:index] do
    resources :scenes do
      resources :likes, only: [:create, :destroy]
    end
    collection do
      get :select
    end
  end
end
