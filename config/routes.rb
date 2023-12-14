Vision::Engine.routes.draw do
  resources :researchers, only: :index do
    root to: 'top#index'
    member do
      get :show
    end
  end
end
