Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  authenticate :user, -> (u) { u.admin? } do
    mount ActiveAnalytics::Engine, at: "analytics"
  end
  get 'profiles/index'

  resources :likes, only: [:create, :destroy]
  resources :comments
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, only: [:show]

  post 'users/:id/follow', to: "users#follow", as: 'follow'
  post 'users/:id/unfollow', to: 'users#unfollow', as: 'unfollow'
  post 'users/:id/accept', to: 'users#accept', as: 'accept'
  post 'users/:id/decline', to: 'users#decline', as: 'decline'
  post 'users/:id/cancel', to: 'users#cancel', as: 'cancel'

  get 'home/about'
  get 'posts/myposts'
  get 'posts/discover'
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"
end
