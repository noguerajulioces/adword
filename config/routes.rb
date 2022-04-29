# frozen_string_literal: true

Rails.application.routes.draw do
  resources :keyword_badges
  root 'home#index'
  devise_for :users
end
