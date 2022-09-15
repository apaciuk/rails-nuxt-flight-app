# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, skip: :all, controllers: {
    sessions: 'api/v1/sessions'
  }
  devise_scope :user do
    namespace :api, defaults: { format: :json } do
      namespace :v1 do
        resources :registration, only: ['create']
        resources :sessions, only: %w[create destroy]
        resources :airlines, param: :slug
        resources :reviews, only: %w[create destroy]
        # resources :posts
      end
    end
  end

  
  root "pages#index"
  get '*path', to: 'pages#index', via: :all
end
