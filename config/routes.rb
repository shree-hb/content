p '---- GEM ROUTES FILE LOAD from CONFIG-ROUTES -------'
Content::Engine.routes.draw do
p '------- inside gem route from CONFIG-ROUTES -------'
  resources :cruds
  
  controller 'crud' do
    match '/content/cruds',  :to => :index    
  end
  
  get '/content/cruds' => 'cruds#index'

  root "cruds#index"

end