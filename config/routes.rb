Rails.application.routes.draw do



  get '/author', to: 'author#index'
  post '/author',to: 'author#create'
  put '/author/update',to: 'author#update'
  delete '/author',to: 'author#delete'


  #books routes
  get '/book/show',to: 'book#show'
  get '/book',to: 'book#index'
  post '/book',to: 'book#create'
  put '/book/update',to: 'book#update'
  delete '/book',to: 'book#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
