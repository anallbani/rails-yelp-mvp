Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurants/new'
  get 'restaurants/create'
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  root "restaurants#index"

end
