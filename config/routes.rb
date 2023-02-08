Rails.application.routes.draw do
  get 'foods/index'
  get 'foods/new'
  delete 'foods/:id', to: 'foods#destroy', as: 'food'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
