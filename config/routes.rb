Rails.application.routes.draw do
  resources :answers
  resources :questions
  resources :surveys
  resources :patients
  resources :volunteers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
