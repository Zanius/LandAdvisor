Rails.application.routes.draw do
  root 'landing_pages#index'

  devise_for :users

  resources :landing_pages, only: [:index]

  # resources :loans, only

  # resources :leads, only: [:new, :create]
  resources :sell_leads, only: [:new, :create]
  resources :keep_leads, only: [:new, :create]

  authenticate :user do
    resources :leads, only: [:index, :show, :edit, :update, :destroy]
  end

  get '/confirmation', to: 'leads#confirmation'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
