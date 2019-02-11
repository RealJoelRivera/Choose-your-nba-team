Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: [:index, :show, :update, :destroy]
      resources :positions, only: [:index, :show]
      resources :players, only:[:index, :show]
      post "/login", to: "users#login"
      patch "/update", to: "users#auth_update"
    end
  end
end

