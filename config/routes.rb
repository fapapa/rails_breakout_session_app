Rails.application.routes.draw do

  root to: "urls#new"
  resources :urls
  get "/u/:short_url", to: "short_urls#show", as: :short_url

end
