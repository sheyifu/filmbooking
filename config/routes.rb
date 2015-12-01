Rails.application.routes.draw do
  
  get 'map/index'

  resources :news do
  resources :comments, except: [:show, :index]
end 

  resources :movies do
    collection do
      get 'search'
    end
  resources :reviews, except: [:show, :index]
end


  get 'sessions/new'

          resources :users  
          root 'static_pages#home'

          get 'help'    => 'static_pages#help'
          get 'about'   => 'static_pages#about'
          get 'contact' => 'static_pages#contact'
          get 'order'    => 'static_pages#order'
          get 'cinema'    => 'static_pages#cinema'
          
          get 'area'    => 'static_pages#area'
          get 'signup'  => 'users#new'
          get 'users/new'

          get    'login'   => 'sessions#new'
          post   'login'   => 'sessions#create'
          delete 'logout'  => 'sessions#destroy'

          get    'movies'   => 'sessions#index'
          post   'movies'   => 'sessions#create'

          get    'reviews'  => 'seesions#index'
          post   'reviews'  => 'sessions#create'

          

          



      end