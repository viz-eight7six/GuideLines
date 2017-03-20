Rails.application.routes.draw do
  get 'guides/index'

  get 'guides/create'

  get 'guides/destroy'

  root to: 'static_pages#root'

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :show, :destroy]
    resources :guides, only: [:create, :index, :destroy, :show, :update]
    resources :steps
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
