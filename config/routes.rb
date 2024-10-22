Rails.application.routes.draw do
  # Resource builds all crud action routes for blog
  # Using "AS" in the route wil create a variable for you to use in your code
    # :blog_post can reference two separate routes:
    # blog_post_path(1) -> "/blog_posts/1" or blog_post_url(1) -> "http://localhost:300/blog_posts/1"
    get "/blog_posts/new", to: "blog_posts#new", as: :new_blog_post
    get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post
    patch "/blog_posts/:id",to: "blog_posts#update"
    get "/blog_posts/:id/edit", to: "blog_posts#edit", as: :edit_blog_post
    post "/blog_posts", to: "blog_posts#create", as: :blog_posts

  root "blog_posts#index"
end
