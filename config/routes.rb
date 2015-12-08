Rails.application.routes.draw do

  devise_for :admins

  resources :educations, except: [:show]
  resources :portfolios, except: [:show]
  resources :skills, except: [:show]
  resources :technologies, except: [:show]
  resources :work_experiences, except: [:show]

  get 'static_pages/home'
  get ''
  match '/contact', to: 'static_pages#contact', via: 'get'

  root to: "static_pages#home"

end
