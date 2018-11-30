Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  'todos#index'
  get '/index', to: 'todos#index'
  get '/new', to: 'todos#new'
  post '/new', to: 'todos#create'
  get '/todo/:id', to: 'todos#show', as: '/todo'
  get '/edit/:id', to: 'todos#edit'
  post '/edit', to: 'todos#update'
  get   '/todos/:id/complete', to:'todos#complete', as:'complete'
  delete '/delete', to: 'todos#destroy'
  get '/list', to: 'todos#list'
end