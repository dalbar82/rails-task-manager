Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "tasks", to: "tasks#create", as: "tasksnew"
  patch "tasks/:id", to: "tasks#update", as: "updateSubmit"
  delete "tasks/:id", to: "tasks#destroy", as: "deleteTask"

  get "tasks", to: "tasks#index", as: "tasks"
  get "tasks/new", to: "tasks#new", as: "newTask"
  get "tasks/:id", to: "tasks#show", as: "task"
  get "tasks/:id/edit", to: "tasks#edit", as: "taskEdit"

end
