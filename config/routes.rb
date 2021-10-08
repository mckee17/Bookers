Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#top'
  get '/' => 'books#top'

  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show',as:'SHOW'
  get 'books/:id/edit' => 'books#edit',as:'EDIT'
  patch 'books/:id/' => 'books#update',as:'UPDATE'
  delete 'books/:id' => 'books#destroy',as:'DELETE'
end
