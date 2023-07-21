Vision::Engine.routes.draw do
  resources :researchers, only: :index
end
