Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles, only: [:index, :new ,:create, :show, :edit, :update, :destroy]
  resources :users, only: :show
  resources :wills, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  # get '/will_app_top_page/:id', to: 'patients#show'
  # HTTPメソッド 'URIパターン', to: 'コントローラー名#アクション名'
  # get 'posts', to: 'posts#index'
  get 'will_app_top_page', to: 'wills#will_app_top_page'
  get 'will_app_second_page', to: 'wills#will_app_second_page'
  post 'wills', to: 'wills#index'
  # get 'will_app_4th_page', to: 'wills#will_app_4th_page'
end



# will_app_top_page GET    /will_app_top_page(.:format)       wills#will_app_top_page





# wills                GET    /wills(.:format)                          wills#index
#                      POST   /wills(.:format)                          wills#creat
# new_will             GET    /wills/new(.:format)                      wills#new
# edit_will            GET    /wills/:id/edit(.:format)                 wills#edit
# will                 GET    /wills/:id(.:format)                      wills#show
#                      PATCH  /wills/:id(.:format)                      wills#update
#                      PUT    /wills/:id(.:format)                      wills#update
#                      DELETE /wills/:id(.:format)                      wills#destroy
# will_app_top_page    GET    /will_app_top_page(.:format)              wills#will_app_top_page
# will_app_second_page GET    /will_app_second_page(.:format)           wills#will_app_second_page
#                      POST   /wills(.:format)                          wills#index