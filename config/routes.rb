Rails.application.routes.draw do
  get 'lists/new'
  get 'lists/index'
  post 'lists' => 'lists#create'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
