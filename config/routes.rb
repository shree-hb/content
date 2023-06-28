Content::Engine.routes.draw do

  resources :cruds
  root "cruds#index"
  
  get 'content/cruds'  => 'cruds#index'
end
