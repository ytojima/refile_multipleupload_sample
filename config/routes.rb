Rails.application.routes.draw do
  get 'images/destroy'
    root to: 'posts#index'
    resources :posts, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :images, only: [:destroy]
end
