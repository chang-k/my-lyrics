Rails.application.routes.draw do
  get 'products' => 'products#search'
  get 'lyrics' => 'lyrics#index'
  root 'products#index'
end
