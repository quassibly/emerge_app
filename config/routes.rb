Rails.application.routes.draw do
  resources :photos
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  root to: 'articles#index'

  get 'about', to: 'pages#about', as: :about
  get 'updates', to: 'pages#updates', as: :updates
  get 'profiles_mockup', to: 'pages#profiles_mockup', as: :profiles_mockup
  get 'opinions_mockup', to: 'pages#opinions_mockup', as: :opinions_mockup
  get 'video', to: 'pages#video', as: :video
  get 'podcast', to: 'pages#podcast', as: :podcast
  get 'events', to: 'pages#events', as: :events
  get 'spaces', to: 'pages#spaces', as: :spaces
  get 'j'

  resources :articles, :contributors, :photographers, :profiles, :opinions, :images

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
