Rails.application.routes.draw do
  # Resource builds all crud action routes for blog
  # Using "AS" in the route wil create a variable for you to use in your code
    # :blog_post can reference two separate routes:
    # blog_post_path(1) -> "/blog_posts/1" or blog_post_url(1) -> "http://localhost:300/blog_posts/1"
  get "/blog_posts/:id", to: "blog_posts#show", as: :blog_post

  root "blog_posts#index"
end
