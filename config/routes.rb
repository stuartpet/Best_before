# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :shopping_lists do
    resources :items
  end

  root 'welcome#index'

  get 'shopping_lists/new'
end
