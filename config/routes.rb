Vision::Engine.routes.draw do
  resources :researchers, only: :index, param: :user_id do
    member do
      get :show
    end
  end
end
