Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :lists, :only => [ :index, :create ]
  get "lists/show/:title" => "lists#show", as: 'detail'
end
