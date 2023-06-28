p '---- GEM ROUTES FILE LOAD -------'
Content::Engine.routes.draw do
p '------- inside gem route -------'
  resources :cruds

  root "cruds#index"

end