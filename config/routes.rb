Rails.application.routes.draw do

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



# As a user I can see all found pets
  get "pets", to: "pets#index"

  # As a user I can add a pet I found
  get "pets/new", to:"pets#new"
  post "pets", to: "pets#create"

# As a user I can see details about one found pet (when and where it was found)
  get "pets/:id", to: "pets#show", as: :pet

# As a user I can update a pet

  get "pets/:id/edit", to: "pets#edit", as: :edit_pet
  patch "pets/:id", to: "pets#update"

# As a user I can delete a pet

  delete "pets/:id", to: "pets#destroy"


end
