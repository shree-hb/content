p '---- GEM ROUTES FILE LOAD from CONFIG-ROUTES -------'
Content::Engine.routes.draw do
p '------- inside gem route from CONFIG-ROUTES -------'
  resources :cruds

  root "cruds#index"

end