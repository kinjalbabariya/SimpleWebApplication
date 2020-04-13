Rails.application.routes.draw do
  get 'dashbord/index'
  devise_for :patients, path: 'patients', controllers: {
        sessions: 'patients/sessions'
   }
  devise_for :doctors, path: 'doctors', controllers: {
        sessions: 'doctors/sessions'
   }

  root to: 'home#index'
  resources :appointments

  resources :doctor_patients

  resources :patients

  resources :doctor
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
