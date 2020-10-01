Rails.application.routes.draw do
  resources :posts
  # with this method I replayced all http methods listed below
  resources :pages
  # # make a get request for the pages path should go to the PagesController's 'index' method"
  # #  there are index, show, update methods exist
  # get '/pages', to: 'pages#index'
  # post '/pages', to: 'pages#create'
  # # ":" = url parameter
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # # this request modifies resources
  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
