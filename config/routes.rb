Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout"}

  root to: "home#index"
  # ログイン画面をホームにする（エラーが発生するのでいったんコメントアウト）
  #devise_scope :user do
  #  root :to => "devise/sessions#new"
  #end
  get 'home/index'

  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
