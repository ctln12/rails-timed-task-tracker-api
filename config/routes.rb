Rails.application.routes.draw do
  root to: 'api/v1/tasks#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tasks, only: %i[index create update destroy]
      resources :sessions, only: %i[index show update] do
        collection do
          get '/current', to: 'sessions#current'
        end
      end
    end
  end
end
