Rails.application.routes.draw do
  resources :photos
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  root to: 'articles#index'

  get 'about', to: 'pages#about', as: :about
  get 'about/edit', to: 'pages#aboutedit', as: :edit_about
  get 'profiles/:id/rawedit', to: 'profiles#rawedit', as: :rawedit
  get 'imprint', to: 'pages#imprint', as: :imprint
  get 'gdpr', to: 'pages#gdpr', as: :gdpr

  get 'articles/:id/publish!', to: 'articles#publish!', as: 'publish_article'
  get 'articles/:id/delete', to: 'articles#delete', as: 'delete_article'

  get 'pins/:id/publish!', to: 'pins#publish!', as: 'publish_pin'
  get 'pins/:id/delete', to: 'pins#delete', as: 'delete_pin'

  resources :articles, :contributors, :photographers, :profiles, :opinions, :images, :updates, :pins, :videos, :podcasts, :events, :spaces

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
