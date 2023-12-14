Vision::Engine.routes.draw do
  resources :researchers, only: :index do
    member do
      get :show
    end
  end
end
