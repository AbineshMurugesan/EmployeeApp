Rails.application.routes.draw do
  resources :employee_databases
  resources :employeesamples
  resources :sample1s
  resources :samples
  resources :employee_data
  resources :users
  resources :employees
  root "application#display"
end