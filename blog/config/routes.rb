Rails.application.routes.draw do
  get 'provider/question'

  devise_for :views
  get 'welcome/index'
  post 'intrests/unfollow'
 
  post 'welcome/follow'
  post 'welcome/unfollow'

  devise_for :users
  #get 'homes/show'
  post '/follow' => 'welcome#follow' 

  post'/unfollow' => 'welcome#unfollow'


get '/controller/:action'=>'pages#index'


get '/controller/:action'=>'pages#new'


  post '/follow' => 'welcome#follow'
  post '/unfollow' => 'welcome#unfollow'

   
  post '/unfollow' => 'intrests#unfollow'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


 resources :pages
 resources :events do
     resources:questions 

     end
get 'intrests/:controller/:action/:user_id/:intrest_id' => 'intrests#show'

get 'specifics/:controller/:action/:user_id/:specific_id' => 'specifics#show'

#get 'pages/:controller/:action/:user_id/:page_id' => 'pages#show'
get 'controller/:action'=>'pages#index'
get'controller/:action'=>'devise/pages#index'
get'controller/:action'=>'devise/matfakarnies#index'
  post '/follow' => 'welcome#follow'
  post '/unfollow' => 'welcome#unfollow'

  post '/unfollow' => 'intrests#unfollow'

 
  #resources :create_events
   resources :creatingevents


resources :matfakarnies do
 
    member do
    post 'upvote'
  end
end



  resources :askproviders do
    resources :answers
end


  root 'welcome#index'


 
 resources :intrests

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
  #get 'index/sports'
  #root 'relationships#sports'
  resources :users do
    member do
      get :following, :followers
    end
  end
   resources :relationships,       only: [:create, :destroy]
end