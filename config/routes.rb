Rails.application.routes.draw do
  get "books/index"
  root 'static_pages#home'
  get 'about', to: 'static_pages#about'
  resources :books, only: [:index, :show]


end
