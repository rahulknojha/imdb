# frozen_string_literal: true

#Tv_Routes
Rails.application.routes.draw do
   devise_for :users
   root to: 'tvs#index'

   resources :tvs
end