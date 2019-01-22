# frozen_string_literal: true

#Tv_Routes
Rails.application.routes.draw do
  resources :movies
  devise_for :users
  root to: 'tvs#index'
  resources :tvs
end

