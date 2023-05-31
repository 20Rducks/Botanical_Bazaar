Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "my_listings/plants", to: "plants#my_listings"

  resources :plants, only: %i[index show new create destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[show index]
end
