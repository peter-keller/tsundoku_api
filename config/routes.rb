Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    post 'user/token' => 'user_token#create'
    get 'users/current' => 'users#current'
    post 'users' => 'users#create'
    post 'search' => 'groups#search'
    post 'share/:id' => 'groups#share'
    post 'join/:id' => 'groups#pleasejoin'
    #post 'search' => 'tags#search'
    resources :bookmarks
    resources :tags
    resources :groups
  end
end
