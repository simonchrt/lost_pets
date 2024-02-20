Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # CREATE
  get "pets/new", to: "pets#new"
  post "pets", to: "pets#create"

  # READ
  root "pets#index"
  get "pets/:id", to: "pets#show", as: :pet


  # UPDATE
  get "pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "pets/:id/", to: "pets#update"

  # DELETE

  delete "pets/:id", to: "pets#destroy"

end
