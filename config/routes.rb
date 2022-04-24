Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


    devise_for :usuarios, controllers: {
      sessions: 'usuarios/sessions',
      passwords: 'usuarios/passwords',
      registrations: 'usuarios/registrations'
    }

  root "home#index"

end
