Rails.application.routes.draw do

  resources :educations
  devise_for :admins

  resources :portfolios
  resources :skills, except: [:show]
  resources :work_experiences

  get 'static_pages/home'
  get 'static_pages/contact'

  root to: "static_pages#home"

end
