Rails.application.routes.draw do
  # read all
  get '/tasks', to: 'tasks#index', as: :tasks
  # create task
  get '/tasks/new', to: 'tasks#new', as: :new
  post '/tasks', to: 'tasks#create'
  # read one
  get '/tasks/:id', to: 'tasks#show', as: :task
  # update task
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch '/tasks/:id', to: 'tasks#update'
  # delete task
  delete '/tasks/:id', to: 'tasks#destroy'
end
