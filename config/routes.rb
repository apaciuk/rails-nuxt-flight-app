Rails.application.routes.draw do
    devise_for :users, skip: :all, controllers: {
      sessions: 'api/v1/sessions'
    }
    devise_scope :user do
    namespace :api, defaults: { format: :json } do
      namespace :v1 do
          resources :registration, only: ['create']
          resources :sessions, only: %w[create destroy]
          #resources :posts
        end
      end
    end
    
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
