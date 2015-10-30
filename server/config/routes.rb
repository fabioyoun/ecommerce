Rails.application.routes.draw do

<<<<<<< HEAD
  get 'sessions/new'
  get 'sessions/destroy'

  # Load the Product Main Page
  get '/products' => 'products#index'

  # Load the Login/Registration Page
  get '/users' => 'users#index'

  # Create New User
  post '/users' => 'users#new'

  # Login and Registration
  get 'sessions/index' => 'session#index'

  # Go to specific product page
  get 'products/:id' => 'products#show'

  # Display the reviews of that product
  get 'reviews/:id' => 'reviews#index'

  # Post a review of that product
  post 'review/:id' => 'reviews#new'

  # Add the product to cart
  post 'product/:id' => 'products#new'

  # Delete the product in the cart
  delete 'product/:id' => 'products#destroy'

  # Submitting Purchase on Cart
  post 'products/:id' => 'products#create'



=======
get 'users/index'
root 'static_pages#index'
>>>>>>> e9e68609796c1fed40ea32002f22a7b39c80f582

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
