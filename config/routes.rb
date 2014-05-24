HikeTaipei::Application.routes.draw do

  root to: "welcome#home"

  resources :trails do
    resources :landscapes
  end
end
