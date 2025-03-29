Shipped::Engine.routes.draw do
  resources :releases, except: :show

  root to: "releases#index"
end
