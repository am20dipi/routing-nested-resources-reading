Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show] do
    # nested resource for posts; nested resources give us a way to document parent/child relationship in our routes/urls
    resources :posts, only: [:show, :index]
    # we are passing the resource :authors a block of nested routes
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
