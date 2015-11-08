Rails.application.routes.draw do

  devise_for :admins

  resources :educations
  resources :portfolios
  resources :skills, except: [:show]
  resources :technologies
  resources :work_experiences

  get 'static_pages/home'
  match '/contact', to: 'static_pages#contact', via: 'get'

  root to: "static_pages#home"

end
