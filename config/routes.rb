Rails.application.routes.draw do
  get "/blog", to: "blog#index"
  get "/blog/:id", to: "blog#show"
  post "/blog", to: "blog#create"
end
