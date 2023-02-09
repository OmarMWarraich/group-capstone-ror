Rails.application.routes.draw do
  get 'recipe_food/index'
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes, only: [:index, :new, :create, :show, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "foods#index"
end