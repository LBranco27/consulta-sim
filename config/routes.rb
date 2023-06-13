Rails.application.routes.draw do
  root "patients#index"
  get "/patients/all", to: "patients#all"
  resources :medics
  resources :patients do
    resources :appointments
  end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
