Rails.application.routes.draw do
  resources :restaurants
end

# creating the routes by hand!

  # get "restaurants/:id", to: "restaurants#show"
  # get "restaurants", to: "restaurants#index"

  # # creating a new record
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # # editing and updating a record
  # get "restaurants/:id/edit", to: "restaurants#edit"
  # patch "restaurants/:id", to: "restaurants#update"

  # # delete from the server
  # delete "restaurants/:id", to: "restaurants#destroy"
