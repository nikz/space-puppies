Rails.application.routes.draw do

  resources :puppies

  root to: "puppies#index"

end
