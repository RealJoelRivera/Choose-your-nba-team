Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :positions, only: [:index, :show]
      resources :players, only:[:index, :show]
    end
  end
end

