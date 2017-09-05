Rails.application.routes.draw do
  root "pages#show", page: "home"

  get "/pages/:page" => "pages#show"

  match "/404", :to => "errors#not_found", :via => :all

  match "/500", :to => "errors#internal_server_error", :via => :all

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
