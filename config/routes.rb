Rails.application.routes.draw do
  get "dashboard/receptionist"
  get "dashboard/doctor"
  root 'sessions#new'

  resources :sessions, only: [:new, :create, :destroy]
  resources :patients

  
  get 'receptionist_dashboard', to: 'dashboard#receptionist'
  get 'doctor_dashboard', to: 'dashboard#doctor'
  
  delete 'logout', to: 'sessions#destroy'
end
