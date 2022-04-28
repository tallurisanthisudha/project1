Rails.application.routes.draw do
  devise_for :employees
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  get 'index', to: 'home#index'
  get 'employee',to: 'home#employee'
  get 'hr',to: 'home#hr'
  get 'signnedin', to: 'home#signnedin'
  

  
end
