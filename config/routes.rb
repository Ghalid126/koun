Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root "pages#home"

    get 'home', to: 'pages#home'
    get 'quote_step1', to: 'pages#quote_step1'
    get 'portfolio', to: 'pages#portfolio'
    get 'about', to: 'pages#about'
    get 'faq', to: 'pages#faq'
    get 'contact', to: 'contact_form#new'
    get 'calendar', to: 'pages#calendar'

    resources :contact_form, only: [:new, :create]
  end
end
