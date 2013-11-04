TweetsApp::Application.routes.draw do

  root to: "tweets#index"

  resources :tweets

  get '/search', to: "tweets#search"

end
