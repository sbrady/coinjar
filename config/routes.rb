Rails.application.routes.draw do



  resources :prices
  # get 'prices/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  post "/prices" => "prices#create"
  get "/prices" => "prices#new"

end
