Rails.application.routes.draw do
  resources :contacts

  post("/contacts", :to => "contacts#create")  
end
