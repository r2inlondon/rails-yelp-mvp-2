Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new'
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  post 'restaurants', to: 'restaurants#create'

  get  'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :restaurant_reviews
end
