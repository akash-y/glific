defmodule Glific.Config do
  use Vapor.Planner

  dotenv()

  config :db,
         env([
           {:url, "DB_URL"},
           {:name, "DB_NAME"},
           {:pool_size, "DB_POOL_SIZE", default: 10, map: &String.to_integer/1}
         ])

  config :web,
         env([
           {:port, "PORT", default: 4000, map: &String.to_integer/1}
         ])

  config :frontend,
         env([
           {:dontknow}
         ])
end
