Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get 'home', to: 'pages#home'
  get 'quote_step1', to: 'pages#quote_step1'
end
