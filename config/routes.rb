Rails.application.routes.draw do
  root to: 'api/v1/tasks#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tasks, only: %i[index create update destroy]
      resources :sessions, only: :update
    end
  end
end
