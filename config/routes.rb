Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home'
  get '*path', to: redirect('/')
end