Rails.application.routes.draw do


  devise_for :users
  root 'trips#homepage'
  get('/search', { :controller => 'trips', :action => 'search' })


  # Routes for the Rating resource:
  # CREATE
  get('/ratings/new', { :controller => 'ratings', :action => 'new' })
  get('/create_rating', { :controller => 'ratings', :action => 'create' })

  # READ
  get('/ratings', { :controller => 'ratings', :action => 'index' })
  get('/ratings/:id', { :controller => 'ratings', :action => 'show' })

  # UPDATE
  get('/ratings/:id/edit', { :controller => 'ratings', :action => 'edit' })
  get('/update_rating/:id', { :controller => 'ratings', :action => 'update' })

  # DELETE
  get('/delete_rating/:id', { :controller => 'ratings', :action => 'destroy' })
  #------------------------------

  # Routes for the Trip resource:
  # CREATE
  get('/trips/new', { :controller => 'trips', :action => 'new' })
  get('/create_trip', { :controller => 'trips', :action => 'create' })

  # READ
  get('/trips', { :controller => 'trips', :action => 'index' })
  get('/trips/:id', { :controller => 'trips', :action => 'show' })

  # UPDATE
  get('/trips/:id/edit', { :controller => 'trips', :action => 'edit' })
  get('/update_trip/:id', { :controller => 'trips', :action => 'update' })

  # DELETE
  get('/delete_trip/:id', { :controller => 'trips', :action => 'destroy' })
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get('/cities/new', { :controller => 'cities', :action => 'new' })
  get('/create_city', { :controller => 'cities', :action => 'create' })

  # READ
  get('/cities', { :controller => 'cities', :action => 'index' })
  get('/cities/:id', { :controller => 'cities', :action => 'show' })

  # UPDATE
  get('/cities/:id/edit', { :controller => 'cities', :action => 'edit' })
  get('/update_city/:id', { :controller => 'cities', :action => 'update' })

  # DELETE
  get('/delete_city/:id', { :controller => 'cities', :action => 'destroy' })
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------



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
