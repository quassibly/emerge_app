Rails.application.routes.draw do
  resources :photos
  devise_for :users
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  root to: 'articles#index'

  get 'about', to: 'pages#about', as: :about
  get 'about/edit', to: 'pages#aboutedit', as: :edit_about
  patch 'about', to: 'pages#update', as: :update_about
  get 'articles/:id/htmledit', to: 'articles#htmledit', as: :htmledit_article
  get 'dispatches/:id/htmledit', to: 'dispatches#htmledit', as: :htmledit_dispatch
  get 'profiles/:id/htmledit', to: 'profiles#htmledit', as: :htmledit_profile
  get 'opinions/:id/htmledit', to: 'opinions#htmledit', as: :htmledit_opinion
  get 'updates/:id/htmledit', to: 'updates#htmledit', as: :htmledit_update
  get 'emergepodcast', to: 'podcasts#emergepodcast', as: :emergepodcast
  get 'imprint', to: 'pages#imprint', as: :imprint
  get 'imprint/edit', to: 'pages#imprintedit', as: :edit_imprint
  get 'gdpr', to: 'pages#gdpr', as: :gdpr

  get 'articles/:id/publish!', to: 'articles#publish!', as: 'publish_article'
  get 'articles/:id/delete', to: 'articles#delete', as: 'delete_article'

  get 'pins/:id/publish!', to: 'pins#publish!', as: 'publish_pin'
  get 'pins/:id/delete', to: 'pins#delete', as: 'delete_pin'

  resources :articles, :contributors, :photographers, :profiles, :opinions, :photos, :images, :updates, :pins, :videos, :podcasts, :events, :spaces, :dispatches

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
