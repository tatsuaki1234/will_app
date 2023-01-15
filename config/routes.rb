Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles, only: [:index, :new ,:create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :wills, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    get 'will_app_top_page', to: 'wills#will_app_top_page'
    get 'will_app_second_page', to: 'wills#will_app_second_page'
    post 'wills', to: 'wills#index'
    get 'will_app_reader_page', to: 'wills#will_app_reader_page'
    get 'will_app_reader_page_2', to: 'wills#will_app_reader_page_2'
    get 'will_app_reader_page_3', to: 'wills#will_app_reader_page_3'
    get 'will_app_reader_page_4', to: 'wills#will_app_reader_page_4'
  end
end






#遺書と閲覧用遺書はお案じもので、遺書が削除されたら、閲覧の遺書もなくなる、→ルーティングのネストでまとめる。


