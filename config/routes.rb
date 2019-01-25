# frozen_string_literal: true

# Tv_Routes
Rails.application.routes.draw do
  resources :movies
  devise_for :users
  root to: 'movies#index'
  resources :tvs
  resources :reviews
end
