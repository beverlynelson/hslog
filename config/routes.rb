Hslogger::Application.routes.draw do
  
  root to: "sessions#new"
  resources :identities

  match "/auth/:provider/callback", to: "sessions#create"
  match "/auth/failure", to: "sessions#failure"
  match "/logout", to: "sessions#destroy", :as => "logout"

end
