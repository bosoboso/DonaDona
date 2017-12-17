Rails.application.routes.draw do
  get 'career/new'
  post 'career/create'
  get 'career/index'
  get 'career/update'
  get 'career/delete'

  get 'pages/index'
  get 'pages/search'

  root 'users#sign_in'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
