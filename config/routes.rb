Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :plants, only: %i[index show new create destroy] do
    resources :bookings, only: %i[index show new create]
  end
end
