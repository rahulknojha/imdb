# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'movies#home'
  resources :movies
end
