Rails.application.routes.draw do

  devise_for :admins
  resources :portfolios
  resources :work_experiences

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/contact'

  get 'static_pages/skills'

end
