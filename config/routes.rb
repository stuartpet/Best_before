# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'

  resources :shopping_lists

  root 'welcome#index'

  get 'shopping_lists/new'
end
