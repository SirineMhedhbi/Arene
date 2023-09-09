# frozen_string_literal: true
Rails.application.routes.draw do
  resources :shields
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index'
 
  resources :characters do
    post 'fight', on: :collection
  end

  resources :weapons 

  resources :battles, only: [:new, :create, :show, :index] do
    collection do
      get 'history'
      get 'statistics'
    end
  end
end