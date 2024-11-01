# Course: WEDB-3008
# Instructor: Wilson Reid
# Author: Will Bowyer
# Date Created: 27-10-24
# Last Updated: 1-11-24

Rails.application.routes.draw do
  get "categories/index"
  get "categories/show"
  
  root 'static_pages#home'
  get 'about', to: 'static_pages#about'

  resources :books, only: [:index, :show]

  resources :categories, only: [:index, :show] do
    resources :books, only: [:index, :show]
  end

  resources :authors, only: [:index, :show] do
    resources :books, only: [:index, :show]
  end
end
