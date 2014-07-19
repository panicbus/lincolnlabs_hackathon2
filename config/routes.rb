Impartial::Application.routes.draw do

  # resources :user

  root to: 'quizes#index'

  resources :quizes
  resources :question_test

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]


end
