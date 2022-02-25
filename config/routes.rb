Rails.application.routes.draw do
  resources :courses do
    resources :lessons
  end

  root 'main#landing_page'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
