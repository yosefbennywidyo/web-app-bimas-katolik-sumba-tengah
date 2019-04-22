Rails.application.routes.draw do
  resources :laporan_penyuluh_agama_katolik
  devise_for :users

  scope "/mengelola" do
  	resources :users
  end

  get 'beranda/index'
  resources :data_keagamaan_katolik
  resources :peran
  resources :users
  root 'beranda#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
