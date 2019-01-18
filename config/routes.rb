# frozen_string_literal: true

Rails.application.routes.draw do
 	#get 'movie/index'
  #get 'movie/new'
  #get 'movie/show'
  #get 'movie/edit'
	#post 'create', to: 'movie#create'
  resources :movies
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end