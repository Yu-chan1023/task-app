Rails.application.routes.draw do
  root "tasks#index"
  resources :tasks do
    collection do
      get 'slow'
    end
    collection do
      get 'fast'
    end
    collection do
      get 'high'
    end
    collection do
      get 'low'
    end
  end
  resources :categories, only: :show
  resources :priorities, only: :show
end
