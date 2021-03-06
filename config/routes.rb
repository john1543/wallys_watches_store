WallysWatchesStore::Application.routes.draw do
  get "products/index"

  get "store/index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root :to => 'store#index'
  match 'about' => 'store#about', :as => :about, :via => :get
  match 'contact' => 'store#contact', :as => :contact, :via => :get
  match 'search_results' => 'store#search_results', :as => :search_results, :via => :post
  match 'all_products' => 'store#all_products', :as => :all_products, :via => :get
  match 'mechanical_watches' => 'store#mechanical_watches', :as => :mechanical_watches, :via => :get
  match 'luxury_watches' => 'store#luxury_watches', :as => :luxury_watches, :via => :get
  match 'special_design' => 'store#special_design', :as => :special_design, :via => :get
  match 'sports' => 'store#sports_watches', :as => :sports_watches, :via => :get

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
