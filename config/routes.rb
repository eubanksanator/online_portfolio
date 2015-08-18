Rails.application.routes.draw do


  devise_for :admins
  resources :portfolios
  resources :skills
  resources :work_experiences

  root to: "static_pages#home"

  get 'static_pages/home'

  get 'static_pages/contact'

end
