Rails.application.routes.draw do
  resources :todos
  root  'todos#index'
  get   '/todos/:id/complete', to:'todos#complete', as:'complete'
  get   'todos/list'
  # get 'todos/index', to: 'todos#index'
  # get 'todos/new/:id'
  # post 'todos/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
