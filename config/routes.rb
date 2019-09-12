Rails.application.routes.draw do
  root 'short_forms#new'

  devise_for :users

  authenticate :user do
    resources :short_forms, only: [:index, :show, :edit, :update, :destroy]
  end

  resources :short_forms, only: [:new, :create]

  # resources :short_forms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
