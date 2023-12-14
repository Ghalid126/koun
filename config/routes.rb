Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get 'home', to: 'pages#home'
  get 'quote_step1', to: 'pages#quote_step1'
  get 'portfolio', to: 'pages#portfolio'
  get 'about', to: 'pages#about'
  get 'faq', to: 'pages#faq'
  get 'contact', to: 'contacts#new'


  resources :contact_form, only: [:new, :create]
end
