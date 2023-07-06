Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/articles' => 'articles#index'
  get '/articles/new' => 'articles#new', as: 'new_article'
  post '/articles' => 'articles#create', as: 'create_article'

  get '/articles/:id' => 'articles#show', as: 'show_article'

  get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'
  post '/articles/:id' => 'articles#update', as: 'update_article'

  delete '/articles/:id' => 'articles#delete', as: 'delete_article'
end
