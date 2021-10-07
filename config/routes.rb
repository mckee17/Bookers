Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#top'
  get '/' => 'books#top'

  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'books/show' => 'books#show'
  get 'books/edit' => 'books#edit'
end
