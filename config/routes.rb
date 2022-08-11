Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # A user can see all the lists
  # lists#index
  # get '/lists', to: 'lists#index', as: :lists

  # A user can see the details of a given list and its name
  # lists#show
  # get '/lists/:id', to: 'lists#show', as: :list

  # A user can create a new list
  # lists#new
  # lists#create
  # get '/lists/new', to: 'lists#new', as: :new_list
  # post '/lists', to: 'lists#create'

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
