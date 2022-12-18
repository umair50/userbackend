Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "user", to:"user#add_user"
  get  "user", to:"user#all_user"
  put  "user", to:"user#update_user"
  post "user/:id", to:"user#delete_user"
  get "user/:id", to:"user#to_show_user"


end
