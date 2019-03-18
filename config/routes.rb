Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :tasks
  end
  # resources :tasks, :only => [ :index, :create ]
  # # get "lists/show/:title" => "lists#show", as: 'detail'
  # match '/create_task' => 'lists#create_task', via: [ :post, :patch]
end
