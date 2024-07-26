Vision::Engine.routes.draw do
  resources :researchers, only: %i[index show], param: :handle
end
