Rails.application.routes.draw do
  devise_for :users
   
 get "/" => "trips#index"

 get "/map" => "results#maps"

end
