require 'api_constraints'

Rails.application.routes.draw do
  root 'home#index'

  # API definition
  namespace :api, defaults: { format: :json } do
    # The constraints are setting the default API version to 1
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      mount_devise_token_auth_for 'User', at: 'auth'
      resources :budgets, only: [:index, :show, :create, :update, :destroy]
      resources :balances, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      resources :expenditures, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
