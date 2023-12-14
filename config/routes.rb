Rails.application.routes.draw do
  root "pages#home"

  get 'home', to: 'pages#home'
  get 'quote_step1', to: 'pages#quote_step1'
  get 'portfolio', to: 'pages#portfolio'
  get 'about', to: 'pages#about'
  get 'faq', to: 'pages#faq'
  get 'contact', to: 'contact_forms#new'

  resources :contact_forms, only: [:new, :create]
end
