Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :tasks, only: [:create, :destroy]
    # post 'lists/:list_id/tasks/:id/toggle' => 'tasks#toggle'
    match 'tasks/:id' => 'tasks#toggle', via: :post
  end
  # resources :tasks, :only => [ :index, :create ]
  # # get "lists/show/:title" => "lists#show", as: 'detail'
  # match '/create_task' => 'lists#create_task', via: [ :post, :patch]
end
