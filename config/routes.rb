Rails.application.routes.draw do
  get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  resources :places
  get 'pages/home'
  get 'me', to: 'user#show', as: 'me'
  #TODO add somethig too display on rails notes command
  root to: 'pages#home'
  get '*path', to: redirect('/')
end
