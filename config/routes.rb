Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :tasks, only: [:create, :edit, :update, :destroy]
    match 'tasks/:id' => 'tasks#toggle', via: :post
    collection do
      get 'search'
    end
  end

  # get "/search" => "lists#search"
  # resources :tasks, :only => [ :index, :create ]
  # # get "lists/show/:title" => "lists#show", as: 'detail'
  # match '/create_task' => 'lists#create_task', via: [ :post, :patch]
end
