Rails.application.routes.draw do
  resources :places
  root to: 'pages#home'
  get 'pages/home'
  get '*path', to: redirect('/')
  #TODO add somethig too display on rails notes command
end
