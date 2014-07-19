Impartial::Application.routes.draw do

  # resources :user

  root to: 'quizes#index'

  resources :quizes
  resources :question_tests

  post"/question_tests/:id" =>"question_tests#update", as: "question_tests_update"
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]


end
