  Rails.application.routes.draw do
    devise_for :users

    get "/" => "trips#index"

    get "/map" => "results#maps"

    get "/map/panel" => "results#direction_panel"



  end
