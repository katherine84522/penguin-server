Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/penguins", to: "penguins#create"
  delete "/penguins/:id", to: "penguins#destroy"
  get "/penguins", to: "penguins#index"

  get "/cartItems", to: "cart_items#index"
  get "/cartItems/:id", to: "cart_items#show"
  delete "/cartItems/:id", to: "cart_items#destroy"
  post "/cartItems", to: "cart_items#create"

end
