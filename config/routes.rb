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
  get 'dashboardopen', to: 'home#dashboardopen'
  get 'leavespage', to: 'home#leavespage'
  
  get 'adminhome', to: 'admin#adminhome'

  get 'employeemanagement', to: 'admin#employeemanagement'
  get 'designationmanagement', to: 'designation#designationmanagement'
  post 'designationmanagement', to: 'designation#create'
 
  post 'leaveform', to: 'admin#create'
  get 'designationform', to: "designation#designationform"
  get 'leaveform', to: "admin#leaveform"
  

  get 'projectmanagement', to: 'project#projectmanagement'
  get 'projectform', to: 'project#projectform'
  post "projectform", to: 'project#create'

  get 'holiday', to: 'holidays#holiday'
  get 'holidaysform', to: 'holidays#holidaysform'
  post "holidaysform", to: 'holidays#create'


end
