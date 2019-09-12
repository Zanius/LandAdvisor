Rails.application.routes.draw do
  root 'short_forms#new'
  
  devise_for :users

  resources :short_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
