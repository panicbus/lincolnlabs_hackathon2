Impartial::Application.routes.draw do

  # resources :user
  root to: "quizes#splash"
  get "/login" => "sessions#create"
  get "/quiz/" => "quizes#index"
  # get "/quiz" => "quizes#index"
  get "/quiz/[:id]" => "quizes#show"
  get "/sessions/profile" => "sessions#profile"
  get "/sessions/chooseparty" => "sessions#chooseparty"
  # get "/sessions/issueslist" => "sessions#issueslist"

  get "/sessions/pieresult" => "sessions#pieresult"
  get "/sessions/finalresults" => "sessions#finalresults"
  get "/sessions/login" => "sessions#login"
  get "/sessions/fullprofile" => "sessions#fullprofile"
 
 

  resources :quizes
  resources :question_tests

  post"/question_tests/:id" =>"question_tests#update", as: "question_tests_update"
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]


end
